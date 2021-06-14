<?php

ini_set("display_errors", 1);
error_reporting(E_ALL);


class CartController
{

    public function actionAdd($id)
    {
        Cart::addProduct($id); //добавляем в корзину
        return self::returnResult();
    }

    public function actionRemove($id)
    {
        Cart::removeProduct($id);
        return self::returnResult();
    }

    public function actionInfo()
    {
        $cartInfo = Cart::getProductofCart();
        return self::returnResult();
    }

    public function actionCheckout()
    {
        ViewIndex::checkout();
    }

    public function actionClear()
    {
        Cart::clear();
        return self::returnResult();
    }

    public static function returnResult()
    {
        $json_data['count'] = Cart::countItems();
        $json_data['sum'] = Cart::sumItems();
        echo json_encode($json_data);
        // return TRUE;
    }
}
