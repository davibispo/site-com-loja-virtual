@extends('store.layouts.main')

@section('content')
<h1 class="title">Meu Carrinho</h1>

<table class="table table-striped">
    <tr>
        <th>Itens</th>
        <th>Preço</th>
        <th>Quantidade</th>
        <th>Sub. Total</th>
    </tr>

    @forelse($products as $product)
    <tr>
        <td>
            <!--<img src="{{url("assets/imgs/temp/{$product['item']->image}")}}" alt="" class="img-cart">-->
            {{$product['item']->name}}
        </td>
        <td>R$ {{number_format($product['item']->price, 2,'.',',')}}</td>
        <td>
            {{$product['qtd']}}
            <a href="{{route('add.cart', $product['item']->id)}}" class="cart-action-item">+</a> -
            <a href="{{route('remove.cart', $product['item']->id)}}" class="cart-action-item">-</a>
        </td>
        <td>R$ {{number_format($product['item']->price * $product['qtd'], 2,'.',',')}}</td>
    </tr>
    @empty
        <p>Nenhum item no carrinho!</p>
    @endforelse
</table>
<div>
    <a href="{{ route('home') }}">Continuar comprando...</a>
</div>

<div class="total-cart"><span>R$ {{number_format($cart->total(), 2,'.',',')}}</span></div>

<div class="finish-card">
    <a href="{{route('method.payment')}}">Finalizar Compra <i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
</div>

@endsection
