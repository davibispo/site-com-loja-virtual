<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Cart;
use Illuminate\Support\Facades\DB;
use Session;

class StoreController extends Controller
{
    public function index(Product $product)
    {
        $products = $product->all()->where('ativo', 1)->sortBy('name');

        //$products = DB::select('SELECT DISTINCT A.id, A.name, A.price, A.image
        //                        FROM products A, products B
        //                        WHERE A.image <> B.image
        //                        ORDER BY A.name', [1]
        //                        );
        //dd($products);
        return view('store.home.index', compact('products'));
    }


    public function cart()
    {
        $title = 'Meu Carrinho de Compras!';

        $cart = new Cart;

        $products = $cart->getItems();

        return view('store.cart.cart', compact('title', 'cart', 'products'));
    }


    public function methodPayment()
    {
        $title = 'Escolha o metodo de pagamento';

        return view('store.cart.method-payment', compact('title'));
    }

    public function paymentBillet()
    {
        $title = 'Pagamento por boleto';

        return view('store.cart.payment-billet', compact('title'));
    }

    public function paymentCard()
    {
        $title = 'Pagamento por cartão';

        return view('store.cart.payment-card', compact('title'));
    }
}
