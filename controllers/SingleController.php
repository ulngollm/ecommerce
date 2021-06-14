<?php

ini_set("display_errors", 1);

error_reporting(E_ERROR | E_WARNING | E_PARSE);


class SingleController
{

        public function actionProduct($single)
        {

                $singleproduct = Single::getProduct($single);
                ViewIndex::single($singleproduct);
        }
}
