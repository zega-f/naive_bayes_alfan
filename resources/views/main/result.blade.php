<div class="row">
	@foreach($calc_result as $res)
	<div class="col-md-4">
		<header>
			{{$res['classname']}}
			@if($res['pcx']==$highest && $res['pcx']>0)
			<div class="badge badge-success">Selected</div>
			@endif
		</header>
		<ul>
			<li>P(Provider|C<sub>{{$res['classname']}}</sub>) = {{$res['provider_base']}} =  {{$res['provider']}}</li>
			<li>P(Kuota|C<sub>{{$res['classname']}}</sub>) = {{$res['kuota_base']}} = {{$res['kuota']}}</li>
			<li>P(Harga|C<sub>{{$res['classname']}}</sub>) = {{$res['harga_base']}} = {{$res['harga']}}</li>
			<li>P(Jenis Kuota|C<sub>{{$res['classname']}}</sub>) = {{$res['unlimited_base']}} = {{$res['unlimited']}}</li>
			<li>P(X|C<sub>{{$res['classname']}}</sub>) =  {{$res['pxc']}}</li>
			<li>P(C<sub>{{$res['classname']}}</sub>) =  {{$res['pc']}}</li>
			<li>P(C<sub>{{$res['classname']}}</sub>|X) =  {{$res['pcx']}}</li>
		</ul>
	</div>
	@endforeach
</div>