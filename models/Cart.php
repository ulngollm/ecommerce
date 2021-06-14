<?php



class Cart {
   
    

    public static function clear() {
        //Для удаления массива используется функция unset(<массив>)
        unset($_SESSION['products']);
        unset($_SESSION['sumPrice']);
        unset($_SESSION['path']);

    }
    
    public static function addProduct($id) {
      //Добавляет товар в корзину
        //$id = intval($id);
        
        $myDB = new SafeMySQL();
        $myselectprice = "SELECT price FROM products WHERE id = $id";
        
        
        
        $price_query = $myDB->getOne($myselectprice);
       
        
        $_SESSION['sumPrice'] += $price_query; 
        
        
      
        
        $arrayProduct = array(); //пустой массив товаров в корзине
        
        if ($_SESSION['products'] != NULL) { //если товары уже есть

            $arrayProduct = $_SESSION['products']; //заполняем товарами
            
            
            
        }
        
        if (array_key_exists($id, $arrayProduct)) { //если такой товар уже есть
           $arrayProduct[$id]++;
          
           
        } else {
            $arrayProduct[$id] = 1; //если товара нет, добавляем новый
           
        }     
      
       $_SESSION['products'] = $arrayProduct; //заполняем сессию
       
      
    }
    
    public static function subProduct($id) {
         //Удаляе товар из корзины

       
        if(isset($_SESSION['products'])) {
           $myDB = new SafeMySQL();
           $myselectprice = "SELECT price FROM products WHERE id = $id";
           $price_query = $myDB->getOne($myselectprice); 
           
             $_SESSION['sumPrice'] -= $price_query*$_SESSION['products'][$id]; 
        
        
         $id = (int)$id;
        
        $arrayProduct = array();
        
        if ($_SESSION['products'] != NULL) {
            $arrayProduct = $_SESSION['products'];
        
        } 
        
         if (array_key_exists($id, $arrayProduct)) {
             while ($arrayProduct[$id] > 0) {
                  unset($arrayProduct[$id]);
             }
        }
        
       $_SESSION['products'] = $arrayProduct;
      
       
        }
        
      
      
        
    }
    
    public static function countItems() {
         //Возвращает количество товаров в корзине
        
        if(isset($_SESSION['products'])) {
            $count = 0;
            foreach ($_SESSION['products'] as $id => $quantity) {
              $count = $count + $quantity;
            }
            
        } else {
            return 0;
        }
        $count = (string)$count;
        return $count;
    }
    
  public static function sumItems() {
         //Возвращает сумму товаров в корзине
         if(isset($_SESSION['products'])) {
            $sum = $_SESSION['sumPrice'];
            
        } else {
            return 0;
        }
        
        
        return $sum;
     
 }
    
 
   
    public static function getProductofCart() {
         //Вернуть массив товаров, находящихся в корзине
        
      $myDB = new SafeMySQL();
      $arrayProduct = $_SESSION['products'];
      
        
        $indstr = "";
        $count = "";
         if(isset($arrayProduct)) {
             foreach ($arrayProduct as $id=>$value) {
            $indstr = $indstr.$id.",";
            
            $count = $count.$value.",";
        }  
         
       
         $indstroke = substr($indstr, 0, -1);
         $count = substr($count, 0, -1);
         
        if($indstroke != 0) {
            
        
        $myselectabout = "SELECT products.id, products.fullname, products.price, fotoproducts.path FROM products JOIN fotoproducts WHERE products.id=fotoproducts.products AND products.id IN ($indstroke) AND (fotoproducts.id % 2) = 1 ORDER BY id ";
        
        
        $arrabout["about"] = $myDB->getAll($myselectabout);
        $arrabout["costs"] = $_SESSION["sumPrice"];
        $arrabout["quant"] = Cart::countItems();
       
        
        foreach (explode(',',$indstroke) as $id=>$value ) {
            array_push($arrabout["about"][$id], $arrayProduct[$value]);
        }
        
        
       }
        return $arrabout; 
        } 
    }
}