<?php

class Index
{

    public static function getDiscountProducts()
    {
        $myDB = new SafeMySQL();

        $query =
            "SELECT id, fullname, price, discount 
            FROM products 
            WHERE discount!=0 ORDER BY name";


        $result = $myDB->getAll($query);

        $productList = array();
        $idEnum = self::getListId($result, $productList);
        self::getArrayFoto($idEnum, 2, $productList);
        return $productList;
    }

    public static function getListId(array $dbResult, array &$productList)
    {
        
        $idList = array_column($dbResult, 'id');
        $idEnum = implode(",", $idList);
        
        $productList = array_combine($idList, $dbResult);//переиндексация массива
        return $idEnum;//строка из списков id, подготовленная для sql запроса
    }


    public static function getArrayFoto(string $idEnum, $kolfoto, array &$productList)
    {
        $myDB = new SafeMySQL();

        
        $query = "SELECT products, path, colorproduct FROM fotoproducts WHERE products IN ($idEnum) ORDER BY products, id";
        $fotoList = $myDB->getAll($query);

        foreach ($fotoList as $value) {

            if (!isset($productList[$value['products']]['foto'])) {
                $productList[$value['products']]['foto'] = array();
            }
            if (count($productList[$value['products']]['foto']) < $kolfoto) {
                $productList[$value['products']]['foto'][] = $value['path'];
            }
        }

        foreach ($productList as $key => $value) {
            $realfoto = count($productList[$key]['foto']);

            if ($realfoto == 0) {
                //сюда добавить массив из колфото пустых фотозаглушек
            } elseif ($realfoto < $kolfoto) {
                for ($k = $realfoto; $k < $kolfoto; $k++) {
                    $productList[$key]['foto'][] = $productList[$key]['foto'][0];
                }
            }
        }


    }

    public static function getNewArrivals()
    {
        $myDB = new SafeMySQL();
        $query = "SELECT id, price, fullname FROM products WHERE isnew=1 ORDER BY id";
        $result = $myDB->getAll($query);
        
        $productList = array();
        $idEnum = self::getListId($result, $productList);
        self::getColorAndSize($idEnum, $productList);
        self::getArrayFoto($idEnum, 2, $productList);

        return $productList;
    }



    public static function getColorAndSize($idEnum, &$productList)
    {
        $myDB = new SafeMySQL();

        $sql = "SELECT colorproducts.product, colors.name FROM colorproducts JOIN colors WHERE colors.id = colorproducts.color AND product IN ($idEnum) ORDER BY  product";
        $colorarray = $myDB->getAll($sql);

        $sqlsize = "SELECT productsize.product, sizes.name FROM productsize JOIN sizes WHERE sizes.id = productsize.size AND product IN ($idEnum) ORDER BY  product";
        $sizearray = $myDB->getAll($sqlsize);

        foreach ($colorarray as $key => $value) {
            $productList[$value["product"]]['color'] = $value['name'];
        }

        foreach ($sizearray as $key => $value) {
            $productList[$value["product"]]['size'] = $value['name'];
        }
    }


    public static function getBestProducts()
    {
        $myDB = new SafeMySQL();

        $query = "SELECT id, price, name FROM products WHERE isbest=1 ORDER BY name";

        $result = $myDB->getAll($query);
        $productList = array();

        $idEnum = self::getListId($result, $productList);
        self::getArrayFoto($idEnum, 2, $productList);

        // var_dump($productList);
        return $productList;
    }

    public static function getProductOfCategory($categorynumb)
    {
        $myDB = new SafeMySQL();

        $query = "SELECT id, price, name FROM products WHERE category=$categorynumb ORDER BY name LIMIT 0,3";

        $result = $myDB->getAll($query);
        $productList = array();

        $idEnum = self::getListId($result, $productList);
        self::getArrayFoto($idEnum, 2, $productList);

        // var_dump($productList);
        return $productList;
    }

    public static function getBrendsOfCategory($brendsnumb)
    {
        $myDB = new SafeMySQL();
        $query = "SELECT id, name FROM brends WHERE section=1 ORDER BY name LIMIT 0,3";
        $result = $myDB->getAll($query);
        $productList = array();
        $idEnum = self::getListId($result, $productList);
        // var_dump($productList);
        return $productList;
    }
}
