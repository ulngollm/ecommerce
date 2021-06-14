<?php

ini_set("display_errors", 1);

error_reporting(E_ERROR | E_WARNING | E_PARSE);


class CartController
{


    public function actionAdd($id)
    {

        Cart::addProduct($id); //добавляем в корзину

        return self::ReturnResult();
    }

    //считаем количество товаров в корзине (в сессии
    //@return int хз, что значит эта строка, пусть будет





    public function actionSub($id)
    {
        Cart::subProduct($id);
        return self::ReturnResult();
    }

    public function actionInfo()
    {

        $cartInfo = Cart::getProductofCart();
        ViewIndex::checkout($cartInfo);
        return self::ReturnResult();
    }

    public function actionClear()
    {
        Cart::clear();
        return self::ReturnResult();
    }


    public static function ReturnResult()
    {

        $json_data['count'] = Cart::countItems();
        $json_data['sum'] = Cart::sumItems();

        echo json_encode($json_data);
        return TRUE;
    }
}
