<?php

namespace app\classes;

use app\database\models\Read;
use app\interfaces\CartInterface;

class CartProducts
{
    public function products(CartInterface $cartInterface)
    {
        $productsInCart    = $cartInterface->cart();
        $productInDatabase = (new Read)->all('products');

        $products = [];
        $total   = 0;

        foreach ($productsInCart as $productId => $quantity) {
            $product = [...array_filter($productInDatabase, fn($product) => (int) $product->id === $productId)];
            
            $products[] = [
                "id"       => $productId,
                "product"  => $product[0]->name,
                "price"    => $product[0]->price,
                "qty"      => $quantity,
                "subtotal" => $quantity * $product[0]->price
            ];

            $total += $quantity * $product[0]->price;
        }

        return [
            'products' => $products,
            'total'   => $total
        ];
    }
}
