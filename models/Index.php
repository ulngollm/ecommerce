<?php

class Index {
    
    public static function getDiscountProducts() {
        $myDB = new SafeMySQL();
        
        $myselect = "SELECT id, fullname, price, discount FROM products WHERE discount!=0 ORDER BY name";
        
        
        $allarray = $myDB->getAll($myselect);
        $resultarray = array();
        
        $indstr = self::getListId($allarray, $resultarray);
        
        self::getArrayFoto($indstr, 2, $resultarray);
       
        return $resultarray;
    }
    
  
    
    public static function getNewArrivals() {
        $myDB = new SafeMySQL();
        
        $myselect = "SELECT id, price, fullname FROM products WHERE isnew=1 ORDER BY id";
      
        
        $allarray = $myDB->getAll($myselect);
        
        $resultarray = array();
        
        $indstr = self::getListId($allarray, $resultarray);
       
        
        self::getColorAndSize($indstr, $resultarray);
        self::getArrayFoto($indstr, 2, $resultarray);
        
        return $resultarray;
    }
  
    public static function getColorAndSize($indstr, &$resultarray) {
        $myDB = new SafeMySQL();
        
        $sql = "SELECT colorproducts.product, colors.name FROM colorproducts JOIN colors WHERE colors.id = colorproducts.color AND product IN ($indstr) ORDER BY  product";
        $colorarray = $myDB->getAll($sql);
      
        $sqlsize = "SELECT productsize.product, sizes.name FROM productsize JOIN sizes WHERE sizes.id = productsize.size AND product IN ($indstr) ORDER BY  product";
        $sizearray = $myDB->getAll($sqlsize);
        
         foreach ($colorarray as $key=>$value) {
            $resultarray[$value["product"]]['color'] = $value['name'];  
        }
        
        foreach ($sizearray as $key=>$value) {
            $resultarray[$value["product"]]['size'] = $value['name'];  
        }
        
    }
    
    
    public static function getBestProducts() {
        $myDB = new SafeMySQL();
        
        $myselect = "SELECT id, price, name FROM products WHERE isbest=1 ORDER BY name";
        
        $allarray = $myDB->getAll($myselect);
        $resultarray = array();
        
        $indstr = self::getListId($allarray, $resultarray);
        self::getArrayFoto($indstr, 2, $resultarray);
        
       // var_dump($resultarray);
        return $resultarray;
    }
    
    public static function getProductOfCategory($categorynumb) {
        $myDB = new SafeMySQL();
        
        $myselect = "SELECT id, price, name FROM products WHERE category=$categorynumb ORDER BY name LIMIT 0,3";
        
        $allarray = $myDB->getAll($myselect);
        $resultarray = array();
        
        $indstr = self::getListId($allarray, $resultarray);
        self::getArrayFoto($indstr, 2, $resultarray);
        
       // var_dump($resultarray);
        return $resultarray;
    }
    
     public static function getBrendsOfCategory($brendsnumb) {
        $myDB = new SafeMySQL();
        
        $myselect = "SELECT id, name FROM brends WHERE section=1 ORDER BY name LIMIT 0,3";
        
        $allarray = $myDB->getAll($myselect);
        $resultarray = array();
        
        $indstr = self::getListId($allarray, $resultarray);
 
        
       // var_dump($resultarray);
        return $resultarray;
    }
    
    
    
    public static function getListId(&$arr, &$resarr) {
        
        $indstr = "";
        
        foreach ($arr as $value) {
            $indstr = $indstr.$value['id'].",";
            $resarr[$value['id']] = $value;
        }
        $indstr = substr($indstr, 0, -1);
      //  var_dump($resarr);
        return $indstr;
    }
    
    public static function getArrayFoto($indstr, $kolfoto, &$resarr) {
        $myDB = new SafeMySQL();
        
                 
        $myselectfoto = "SELECT products, path, colorproduct FROM fotoproducts WHERE products IN ($indstr) ORDER BY products, id";
        $allarrayfoto = $myDB->getAll($myselectfoto);
        
       
        
        
         foreach ($allarrayfoto as $value) {
          //  $resarr[$value['products']]['foto'] = array();
            
           if($resarr[$value['products']]['foto']==NULL) { 
                $resarr[$value['products']]['foto'] = array();
               
                
            }
            if(count($resarr[$value['products']]['foto'])<$kolfoto) {
               $resarr[$value['products']]['foto'][] = $value['path'];
              
            }
             
        } 
        // var_dump($resarr[$value['products']]['foto'][0]);
        
      foreach ($resarr as $i=>$value) {
            $realfoto = count($resarr[$i]['foto']);
            
            if($realfoto==0) {
                //сюда добавить массив из колфото пустых фотозаглушек
            }
            elseif($realfoto<$kolfoto) {
                for($k=$realfoto; $k<$kolfoto; $k++) {
                    $resarr[$i]['foto'][]= $resarr[$i]['foto'][0];
                }
            }
        } 
    
         
       // var_dump($resarr);
    }
    
   
}
