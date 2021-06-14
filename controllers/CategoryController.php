<?php

ini_set("display_errors", 1);

error_reporting(E_ERROR | E_WARNING | E_PARSE);

class CategoryController {
    
    public function actionProducts($id, $page) {
       // var_dump($page);
     
        $arrayofcategory = Category::getProductOfCategory($id,$page,$kolrows); 
      //  var_dump($arrayofcategory);
        $arrayresult = array();
        
        $i = 0;
        $j = 0;
        
        foreach ($arrayofcategory as $key=>$value) {
            $arrayresult[$i][$j++] = $value;
            if($j==4) {
                $i++;
                $j=0;
            }
        }

   // var_dump($arrayresult);
        
    //   var_dump($arrayofcategory);
        
    
   
       
      ViewIndex::category($id, $arrayresult, $page, $kolrows);
    
    }
}
