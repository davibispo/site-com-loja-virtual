@extends('store.layouts.main')

@php
    $title = 'Condimentos Thiara'
@endphp

@section('content')

<section class="products">

    <h2>LOJA DE CONDIMENTOS THIARA</h2><br>
    @php
        //$produtos = DB::table('products')->distinct()->where('image', $image)->get();
    @endphp
    
    @foreach ($products as $p)
    <div class="col-sm-4" style="width:290px">
        <div class="panel panel-primary">
            <div class="panel-body">
                <img src="{{url("assets/imgs/temp/{$p->image}")}}" class="img-responsive" style="width:100%; height:200px;" alt="Image">
            </div>
            <div class="panel-heading">
                @foreach($products as $product)
                    @if ($product->image == $p->image)
                        <a href="{{route('add.cart', $product->id)}}" style="color:white; font-size:11px">{{$product->name}} <span class="badge badge-secondary">R$ {{ number_format($product->price, 2,'.',',') }}</span></a><br>
                    @endif
                @endforeach
            </div>
        </div>
    </div>
    @endforeach

</section><!--Products-->

@endsection
