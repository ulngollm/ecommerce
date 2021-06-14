<?php
ini_set("display_errors", 1);

error_reporting(E_ERROR | E_WARNING | E_PARSE);

class ViewIndex
{

   public static function view($arrayDiscount, $arrayNew, $arrayBest)
   {
      $smarty = new Smarty();
      $arrayMenu = GlobalMenu::returnArrayMenu();

      $arrayinfo = Cart::getProductofCart();
      $smarty->assign('costs', $arrayinfo['costs']);
      $smarty->assign('quanty', $arrayinfo['quant']);

      $smarty->assign('discountarray', $arrayDiscount);
      $smarty->assign('newarray', $arrayNew);
      $smarty->assign('bestarray', $arrayBest);



      $smarty->assign('arraymenu', $arrayMenu);
      $smarty->left_delimiter = '{#';
      $smarty->right_delimiter = '#}';
      $smarty->display("index.html");
   }
   public static function error()
   {
      $smarty = new Smarty();

      $arrayinfo = Cart::getProductofCart();
      $smarty->assign('costs', $arrayinfo['costs']);
      $smarty->assign('quanty', $arrayinfo['quant']);

      $smarty->left_delimiter = '{#';
      $smarty->right_delimiter = '#}';
      $smarty->display("404.tpl");
   }

   public static function category($idcat, $arrayofcategory, $page, $kolrows)
   {
      $smarty = new Smarty();
      $arrayMenu = GlobalMenu::returnArrayMenu();

      $smarty->assign('arraymenu', $arrayMenu);
      $baselink = "/category/$idcat/";

      $arrayinfo = Cart::getProductofCart();
      $smarty->assign('costs', $arrayinfo['costs']);
      $smarty->assign('quanty', $arrayinfo['quant']);
      $smarty->assign('groupeproducts', $arrayofcategory);
      $smarty->assign('pages', mypagenavigation::getPage($kolrows, PER_PAGE, $page, $baselink));

      $smarty->left_delimiter = '{#';
      $smarty->right_delimiter = '#}';
      $smarty->display("products.html");
   }

   public static function contact()
   {
      $smarty = new Smarty();
      $arrayMenu = GlobalMenu::returnArrayMenu();
      $smarty->assign('arraymenu', $arrayMenu);

      $arrayinfo = Cart::getProductofCart();
      $smarty->assign('costs', $arrayinfo['costs']);
      $smarty->assign('quanty', $arrayinfo['quant']);

      $smarty->left_delimiter = '{#';
      $smarty->right_delimiter = '#}';
      $smarty->display("contact.html");
   }

   public static function single($single)
   {


      $smarty = new Smarty();

      $arrayMenu = GlobalMenu::returnArrayMenu();
      $smarty->assign('arraymenu', $arrayMenu);
      $arrayinfo = Cart::getProductofCart();
      $smarty->assign('costs', $arrayinfo['costs']);
      $smarty->assign('quanty', $arrayinfo['quant']);

      $smarty->assign('value', $single);
      $smarty->assign('categorysing', $single['categoryproduct']);
      $smarty->assign('brendssing', $single['brends']);

      $smarty->left_delimiter = '{#';
      $smarty->right_delimiter = '#}';

      $smarty->display("single.html");
   }

   public static function decor()
   {
      $smarty = new Smarty();
      $arrayMenu = GlobalMenu::returnArrayMenu();
      $smarty->assign('arraymenu', $arrayMenu);

      $smarty->left_delimiter = '{#';
      $smarty->right_delimiter = '#}';
      $smarty->display("decor.html");
   }

   public static function checkout()
   {
      $smarty = new Smarty();

      $arrayMenu = GlobalMenu::returnArrayMenu();
      $smarty->assign('arraymenu', $arrayMenu);

      $cart = Cart::getProductofCart();
      // print_r($cart);
      $smarty->assign('cartinfo', $cart["list"]);
      $smarty->assign('cost', $cart["sum"]);

      $smarty->left_delimiter = '{#';
      $smarty->right_delimiter = '#}';
      $smarty->display("checkout.html");
   }

   public static function health()
   {
      $smarty = new Smarty();
      $arrayMenu = GlobalMenu::returnArrayMenu();
      $smarty->assign('arraymenu', $arrayMenu);
      $smarty->left_delimiter = '{#';
      $smarty->right_delimiter = '#}';
      $smarty->display("health.html");
   }
   public static function mobile()
   {
      $smarty = new Smarty();
      $arrayMenu = GlobalMenu::returnArrayMenu();
      $smarty->assign('arraymenu', $arrayMenu);
      $smarty->left_delimiter = '{#';
      $smarty->right_delimiter = '#}';
      $smarty->display("mobile.html");
   }
}
