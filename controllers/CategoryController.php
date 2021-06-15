<?php

class CategoryController
{

  public function actionProducts($id, $page)
  {
    // var_dump($page);

    $arrayofcategory = Category::getProductOfCategory($id, $page, $kolrows);
    //  var_dump($arrayofcategory);
    $arrayresult = array();

    $i = 0;
    $j = 0;

    foreach ($arrayofcategory as $key => $value) {
      $arrayresult[$i][$j++] = $value;
      if ($j == 4) {
        $i++;
        $j = 0;
      }
    }
    ViewIndex::category($id, $arrayresult, $page, $kolrows);
  }
}
