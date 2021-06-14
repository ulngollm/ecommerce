<?php

class AdminView {
    
    
    public static function EnterForm() {
       $smarty = new Smarty();
       $smarty->left_delimiter = '<!--{';
       $smarty->right_delimiter = '}-->';
       $smarty->setTemplateDir('templates/admin');
       $smarty->display("formenter.html");
    }
    
    public static function SectionForm() {
       $smarty = new Smarty();
       $smarty->left_delimiter = '<!--{';
       $smarty->right_delimiter = '}-->';
       $smarty->display("admin\/ectionadmin.html");
    }
    
     public static function CategoriesForm() {
       $smarty = new Smarty();
       $smarty->left_delimiter = '<!--{';
       $smarty->right_delimiter = '}-->';
       $smarty->display("admin/categoriesadmin.html");
    }
    
     public static function BrendsForm() {
       $smarty = new Smarty();
       $smarty->left_delimiter = '<!--{';
       $smarty->right_delimiter = '}-->';
       $smarty->display("admin/brendsadmin.html");
    }
    
    public static function ColorAndSizeForm() {
       $smarty = new Smarty();
       $smarty->left_delimiter = '<!--{';
       $smarty->right_delimiter = '}-->';
       $smarty->display("admin/colorandsizeadmin.html");
    }
    
    public static function ProductsForm() {
       $smarty = new Smarty();
       $smarty->left_delimiter = '<!--{';
       $smarty->right_delimiter = '}-->';
       $smarty->display("admin/productsadmin.html");
    }
}