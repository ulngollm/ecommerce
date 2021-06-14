<?php

ini_set("display_errors", 1);

error_reporting(E_ERROR | E_WARNING | E_PARSE);


class SiteController
{
    public function actionIndex()
    {
        $discountproducts = Index::getDiscountProducts();
        $newproducts = Index::getNewArrivals();
        $bestproducts = Index::getBestProducts();

        ViewIndex::view($discountproducts, $newproducts, $bestproducts);
    }
    public function actionError()
    {
        ViewIndex::error();
    }


    public function actionContact()
    {
        ViewIndex::contact();
    }
    public function actionDecor()
    {
        ViewIndex::decor();
    }
    public function actionHealth()
    {
        ViewIndex::health();
    }

    public function actionMobile()
    {
        ViewIndex::mobile();
    }
}
