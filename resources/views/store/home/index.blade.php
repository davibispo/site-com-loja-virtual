@extends('store.layouts.main')

@php
    $title = 'Condimentos Thiara'
@endphp

@section('content')

<section class="products">

    <h2>LOJA DE CONDIMENTOS THIARA</h2><br>

    @forelse($products as $product)
    @php $count = DB::table('products')->select('image')->where('image', $product->image)->count(); @endphp
    @if ($count > 1)
    <div class="col-sm-4" style="width:270px">
        <div class="panel panel-primary">
            <div class="panel-body">
                <img src="{{url("assets/imgs/temp/{$product->image}")}}" class="img-responsive" style="width:100%; height:200px;" alt="Image">
            </div>
            <div class="panel-heading">
                @for ($i = 0; $i < $count; $i++)
                    <a href="{{route('add.cart', $product->id)}}"  style="color:white">{{$product->name}} R$ {{ number_format($product->price, 2,'.',',') }}<i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                @endfor
            </div>
        </div>
    </div>
    @else
    <div class="col-sm-4" style="width:270px">
        <div class="panel panel-primary">
            <div class="panel-body">
                <img src="{{url("assets/imgs/temp/{$product->image}")}}" class="img-responsive" style="width:100%; height:200px;" alt="Image">
            </div>
            <div class="panel-heading">
                @for ($i = 0; $i < $count; $i++)
                    <a href="{{route('add.cart', $product->id)}}"  style="color:white">{{$product->name}} R$ {{ number_format($product->price, 2,'.',',') }}<i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                @endfor
            </div>
        </div>
    </div>
    @endif

    @empty
        <p>Não existem produtos cadastrados!</p>
    @endforelse

</section><!--Products-->

@endsection
