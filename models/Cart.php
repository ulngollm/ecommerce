<?php



class Cart
{

    public static function clear()
    {
        unset($_SESSION['products']);
        unset($_SESSION['cartSum']);
    }

    public static function addProduct($id)
    {
        //Добавляет товар в корзину
        $id = intval($id);
        $myDB = new SafeMySQL();
        $query = "SELECT price FROM products WHERE id = $id";
        $productPrice = $myDB->getOne($query);

        
        $_SESSION['cartSum']??= 0;
        $_SESSION['cartSum'] += $productPrice;

        if (isset($_SESSION['products'][$id])) {
            $_SESSION['products'][$id]++;
        } else {
            $_SESSION['products'][$id] = 1;
        }
    }

    public static function removeProduct($id)
    {
        //Удаляе товар из корзины
        if (isset($_SESSION['products'])) {
            $myDB = new SafeMySQL();
            $query = "SELECT price FROM products WHERE id = $id";
            $price = $myDB->getOne($query);

            $_SESSION['cartSum'] -= $price * $_SESSION['products'][$id];
            $id = (int)$id;
            unset($_SESSION['products'][$id]);
        }
        
    }

    public static function getCountItems()
    {
        $count = isset($_SESSION['products'])? array_sum($_SESSION['products']): 0;
        return $count;
    }

    public static function getTotalSum()
    {
        $sum = $_SESSION['cartSum'] ?? 0;
        return $sum;
    }

    public static function getProductofCart()
    {
        //Вернуть массив товаров, находящихся в корзине

        $myDB = new SafeMySQL();
        $cartList = $_SESSION['products'] ?? null;
        
        if ($cartList) {
            $idEnum = implode(",", array_keys($cartList));
            $query = "SELECT products.id, products.fullname, products.price, fotoproducts.path FROM products JOIN fotoproducts WHERE products.id=fotoproducts.products AND products.id IN ($idEnum) AND (fotoproducts.id % 2) = 1 ORDER BY id";

            $cart["list"] = $myDB->getAll($query);
            $cart["sum"] = $_SESSION["cartSum"];
            $cart["quantity"] = Cart::getCountItems();
            
            foreach($cart['list'] as &$product){
                $id = $product['id'];
                $product['quantity'] = $cartList[$id];
            }  
        } else $cart = array(
            'list'=>array(),
            'sum'=>0,
            'quantity'=>0
        );

        return $cart;
    }
}
