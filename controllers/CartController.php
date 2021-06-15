<?php

class CartController
{

    public function actionAdd($id)
    {
        Cart::addProduct($id);
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
