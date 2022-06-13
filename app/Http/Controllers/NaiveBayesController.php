<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class NaiveBayesController extends Controller
{
    public function calculate(Request $request)
    {
        $kategori_minat = DB::table('transaksi')
        ->select('minat')
        ->groupBy('minat')
        ->get();

        $all_transaksi_count = DB::table('transaksi')
        ->count();

        $calc_result = array();
        $final_result = array();

        $i = 0;
        foreach ($kategori_minat as $kat_minat) {
            $i++;

            $class_count = DB::table('transaksi')
            ->select('minat')
            ->where([
                ['minat',$kat_minat->minat],
            ])
            ->count();

            $this_provider_case = DB::table('transaksi')
            ->where([
                ['provider',$request->provider],
                ['minat',$kat_minat->minat],
            ])
            ->count();

            $this_kuota_case = DB::table('transaksi')
            ->where([
                ['kuota',$request->kuota],
                ['minat',$kat_minat->minat],
            ])
            ->count();

            $this_kategori_harga_case = DB::table('transaksi')
            ->where([
                ['kategori_harga',$request->kategori_harga],
                ['minat',$kat_minat->minat],
            ])
            ->count();

            $this_jenis_kuota_case = DB::table('transaksi')
            ->where([
                ['unlimited',$request->jenis_kuota],
                ['minat',$kat_minat->minat],
            ])
            ->count();

            $pxc = ($this_provider_case/$class_count)*($this_kuota_case/$class_count)*($this_kategori_harga_case/$class_count)*($this_jenis_kuota_case/$class_count);

            $pc = $class_count/$all_transaksi_count;
            $pcx = $pxc*$pc;

            $calc_result[] = array(
                'classname'=>$kat_minat->minat,
                'provider'=>number_format((float)$this_provider_case/$class_count, 4, '.', ''),
                'provider_base'=>"$this_provider_case/$class_count",
                'kuota'=>number_format((float)$this_kuota_case/$class_count, 4, '.', ''),
                'kuota_base'=>"$this_kuota_case/$class_count",
                'harga'=>number_format((float)$this_kategori_harga_case/$class_count, 4, '.', ''),
                'harga_base'=>"$this_kategori_harga_case/$class_count",
                'unlimited'=>number_format((float)$this_jenis_kuota_case/$class_count, 4, '.', ''),
                'unlimited_base'=>"$this_jenis_kuota_case/$class_count",
                'pxc'=>number_format((float)$pxc, 4, '.', ''),
                'pc'=>number_format((float)$pc, 4, '.', ''),
                'pcx'=>number_format((float)$pcx, 4, '.', ''),
            );

            $final_result[] = number_format((float)$pcx, 4, '.', '');

            // echo "<b>".$kat_minat->minat."</b><br>";
            // echo "P(Provider|C<sub>".$i."</sub>) : ".$this_provider_case.'/'.$class_count.'<br>';
            // echo "P(Besar Kuota|C<sub>".$i."</sub>) : ".$this_kuota_case.'/'.$class_count.'<br>';
            // echo "P(Kategori Harga|C<sub>".$i."</sub>) : ".$this_kategori_harga_case.'/'.$class_count.'<br>';
            // echo "P(Kategori Unlimited/Tidak|C<sub>".$i."</sub>) : ".$this_jenis_kuota_case.'/'.$class_count.'<br>';
            // echo "P(X|C<sub>".$i."</sub>) :".number_format((float)$pxc, 4, '.', '').'<br>';
            // echo "P(C<sub>".$i."</sub>) :".number_format((float)$pc, 4, '.', '').'<br>';
            // echo "P(C<sub>".$i."</sub>|X) :".number_format((float)$pcx, 4, '.', '').'<br>';
            // echo '<hr>';
        }

        $highest = max($final_result);

        // echo json_encode($calc_result);

        return view('main.result',compact('calc_result','final_result','highest'));
    }
}
