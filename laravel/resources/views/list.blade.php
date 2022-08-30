@extends('layouts.app')

@section('content')
<div class="container">	
	<div class="col-md-12">
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">Exchange Rates</h3>
			</div> 
			<div class="card-body">
				@if ($message = Session::get('success'))
    <div class="alert alert-success">
        <p>{{ $message }}</p>
    </div>
@endif
				@if ($message = Session::get('error'))
    <div class="alert alert-warning">
        <p>{{ $message }}</p>
    </div>
@endif
				<table class="table table-bordered">
					<thead>
						<tr>
							<th style="width: 10px"><strong>#</strong></th>
							<th><strong>From</strong></th>
							<th><strong>To</strong></th>
							<th><strong>Value</strong></th>
							<th><strong>Action</strong></th>
						</tr>
					</thead>
					<tbody>
						@foreach($list as $key=>$lists)
						<tr>
							<td>{{$key+1}}</td>
							<td>{{$lists->currency_from}}</td>
							<td>{{$lists->currency_to}}</td>
							<td>{{$lists->value}}</td>
							<td><a href="{{route('editlist', $lists->id)}}">Edit</a></td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
@endsection
