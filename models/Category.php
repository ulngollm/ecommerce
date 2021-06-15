<?php

class Category
{
  public static function getProductOfCategory($idcat, $page, &$kolrows)
  {

    $myDB = new SafeMySQL();
    $query = "SELECT SQL_CALC_FOUND_ROWS * FROM products WHERE category=$idcat ORDER BY name LIMIT ?i, ?i";
    $paginationOffset = PER_PAGE * ($page - 1);
    $categoryProducts = $myDB->getAll($query, $paginationOffset, PER_PAGE);
    $kolrows = $myDB->getOne("SELECT FOUND_ROWS()");

    $productList = array();
    if ($kolrows != 0) {
      $idEnum = Index::getListId($categoryProducts, $productList);
      Index::getArrayFoto($idEnum, 1, $productList);
    }

    return $productList;
  }
}
