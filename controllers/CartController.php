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
        $json_data['count'] = Cart::getCountItems();
        $json_data['sum'] = Cart::getTotalSum();
        echo json_encode($json_data);
    }
}
