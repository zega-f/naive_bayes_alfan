@extends('layouts.app')
@section('content')
<?php  
	$provider = DB::table('transaksi')
	->select('provider')
	->groupBy('provider')
	->get();

	$kategori_kuota = DB::table('transaksi')
	->select('kuota')
	->groupBy('kuota')
	->get();

	$kategori_harga = DB::table('transaksi')
	->select('kategori_harga')
	->groupBy('kategori_harga')
	->get();

	$kategori_unlimited = DB::table('transaksi')
	->select('unlimited')
	->groupBy('unlimited')
	->get();
?>

<div class="container" style="min-height: 100vh;">
	<div class="mb-3">
		<header>Naive Bayes Classifier</header>
		<small class="text-muted">Violet Cell</small>
	</div>
	<div class="mb-3">
		<form action="{{url('calculate')}}" method="post">
			@csrf
			<div class="form-group mb-3 row">
				<div class="col-md-3">
					<label>Provider</label>
					<select class="form-control form-control-sm" name="provider">
						<option value="" selected>Pilih Provider</option>
						@foreach($provider as $prov)
						<option value="{{$prov->provider}}">{{ucwords($prov->provider)}}</option>
						@endforeach
					</select>
				</div>
				<div class="col-md-3">
					<label>Kuota</label>
					<select class="form-control form-control-sm" name="kuota">
						<option value="" selected>Pilih Besar Kuota</option>
						@foreach($kategori_kuota as $k_kuota)
						<option value="{{$k_kuota->kuota}}">{{ucwords($k_kuota->kuota)}}</option>
						@endforeach
					</select>
				</div>
				<div class="col-md-3">
					<label>Kategori Harga</label>
					<select class="form-control form-control-sm" name="kategori_harga">
						<option value="" selected>Pilih Kategori Harga</option>
						@foreach($kategori_harga as $k_harga)
						<option value="{{$k_harga->kategori_harga}}">{{ucwords($k_harga->kategori_harga)}}</option>
						@endforeach
					</select>
				</div>
				<div class="col-md-3">
					<label>Jenis Kuota</label>
					<select class="form-control form-control-sm" name="jenis_kuota">
						<option value="" selected>Pilih Unlimited/Tidak</option>
						@foreach($kategori_unlimited as $k_unlimited)
						<option value="{{$k_unlimited->unlimited}}">{{ucwords($k_unlimited->unlimited)}}</option>
						@endforeach
					</select>
				</div>
			</div>
			<button class="btn btn-info btn-xs shadow-sm">Jalankan Perhitungan <i class="bi bi-hammer"></i></button>
		</form>
	</div>
</div>
<script type="text/javascript">
	function doCalculate(e)
	{
		e.preventDefault();
		processed();
		setTimeout(function(){
			finish();
		},2000);
	}
</script>
@endsection