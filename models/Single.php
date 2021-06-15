<?php

class Single
{

    private static function getArrayFoto($id, &$single)
    {

        $myDB = new SafeMySQL();
        $queryfoto = "SELECT products, path FROM fotoproducts WHERE products=?i ORDER BY id";
        $result = $myDB->getAll($queryfoto, $id);

        foreach ($result as $value) {
            $single['foto'][] = $value['path'];
        }
    }

    private static function getArraySize($id, &$single)
    {

        $myDB = new SafeMySQL();
        $querysize = "SELECT id, name FROM sizes WHERE id IN (SELECT size FROM productsize WHERE product = ?i)";
        $single['size'] = $myDB->getAll($querysize, $id);
    }

    private static function getArrayColor($id, &$single)
    {

        $myDB = new SafeMySQL();

        $querycolor = "SELECT id, name, code FROM colors WHERE id IN (SELECT color FROM colorproducts WHERE product = ?i)";
        $single['color'] = $myDB->getAll($querycolor, $id);

    }

    private static function getAboutProduct($id, &$single)
    {

        $myDB = new SafeMySQL();

        $query = "SELECT id, name, fullname, price, issize, smalldiscription FROM products WHERE id=?i ORDER BY id";
        $single['about'] = $myDB->getAll($query, $id);

    }


    public static function getProduct($id)
    {

        $myDB = new SafeMySQL();

        $query = "SELECT * FROM products WHERE  id = $id ORDER BY id ";
        //  $query = "SELECT * FROM products WHERE id=$id";

        $single = $myDB->getRow($query);

        self::getArrayFoto($id, $single);
        self::getArraySize($id, $single);
        self::getArrayColor($id, $single);
        self::getAboutProduct($id, $single);

        $single['categoryproduct'] = Index::getProductOfCategory($single['category']);

        $single['brends'] = Index::getBrendsOfCategory($single['category']);


        return $single;
    }
}
