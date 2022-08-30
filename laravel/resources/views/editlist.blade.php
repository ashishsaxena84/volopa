@extends('layouts.app')

@section('content')
<div class="container">	
	<div class="col-md-12">
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">Edit Exchange Rates</h3>
			</div> 
			<div class="card-body">
				<form action="{{route('liststore', $list->id)}}" method="POST">
    			@csrf


         <div class="row">
		    <div class="col-xs-12 col-sm-12 col-md-12">
		        <div class="form-group">
		            <strong>id:</strong>
		            <input type="text" name="id" value="{{$list->id}}" class="form-control" placeholder="Id" readonly>
		        </div>
				<div class="form-group">
		            <strong>From:</strong>
		            <input type="text" name="cur_from" value="{{$list->currency_from}}" class="form-control" placeholder="Id" readonly>
		        </div>
				<div class="form-group">
		            <strong>To:</strong>
		            <input type="text" name="cur_to" value="{{$list->currency_to}}" class="form-control" placeholder="Id" readonly>
		        </div>
				<div class="form-group">
		            <strong>Value:</strong>
		            <input type="text" name="valuecu" value="{{$list->value}}" class="form-control" placeholder="Id">
		        </div>
		    </div>
		    
		    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
		      <button type="submit" class="btn btn-primary">Submit</button>
		    </div>
		</div>


    </form>
			</div>
		</div>
	</div>
</div>
@endsection
