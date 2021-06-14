<?php

class Single {
    
    private static function getArrayFoto($id, &$single) {
        
        $myDB = new SafeMySQL();
        $myselectfoto = "SELECT products, path FROM fotoproducts WHERE products=?i ORDER BY id";
        $allarrayfoto = $myDB->getAll($myselectfoto, $id);
        
        foreach ($allarrayfoto as $value) {
            $single['foto'][] = $value['path'];
        }
    }
    
    private static function getArraySize($id, &$single) {
        
        $myDB = new SafeMySQL();
        $myselectsize = "SELECT id, name FROM sizes WHERE id IN (SELECT size FROM productsize WHERE product = ?i)";
        $single['size'] = $myDB->getAll($myselectsize, $id);
        
       
    }
    
    private static function getArrayColor($id, &$single) {
        
        $myDB = new SafeMySQL();

         $myselectcolor = "SELECT id, name, code FROM colors WHERE id IN (SELECT color FROM colorproducts WHERE product = ?i)";
        $single['color'] = $myDB->getAll($myselectcolor, $id);
      //  var_dump($single);
        
    }
    
     private static function getAboutProduct($id, &$single) {
        
        $myDB = new SafeMySQL();

         $myselectprod = "SELECT id, name, fullname, price, issize, smalldiscription FROM products WHERE id=?i ORDER BY id";
        $single['about'] = $myDB->getAll($myselectprod, $id);
    //  var_dump($single['about']);
        
    }
   
   
        public static function getProduct($id) {
        
        $myDB = new SafeMySQL();
        
        $myselect = "SELECT * FROM products WHERE  id = $id ORDER BY id ";
      //  $myselect = "SELECT * FROM products WHERE id=$id";
        
        $single = $myDB->getRow($myselect);
        

        self::getArrayFoto($id, $single);
        self::getArraySize($id, $single);
        self::getArrayColor($id, $single);
        self::getAboutProduct($id, $single);
        
$single['categoryproduct'] = Index::getProductOfCategory($single['category']);

 $single['brends'] = Index::getBrendsOfCategory($single['category']);


         return $single;
    }
}