<?php

return array(
    'checkout' => 'cart/info',

    "admin/exit" => "admin/exit",
    "admin/enter" => "admin/enter",

    "admin/sectioncomand/([\w]+)" => "admin/sectioncomand/$1",
    "admin/categorycomand/([\w]+)" => "admin/categorycomand/$1",
    "admin/brendscomand/([\w]+)" => "admin/brendscomand/$1",
    "admin/ColorAndSizeComand/([\w]+)" => "admin/ColorAndSizeComand/$1",
    "admin/productsComand/([\w]+)" => "admin/productsComand/$1",

    "admin/section" => "admin/section",
    "admin/category" => "admin/category",
    "admin/brends" => "admin/brends",
    "admin/colorandsize" => "admin/colorandsize",
    "admin/products" => "admin/products",

    "admin" => "admin/index",

    'category/([0-9]+)/([0-9]+)' => 'category/products/$1/$2',
    'category/([0-9]+)' => 'category/products/$1/1',

    'single/product/([0-9]+)' => 'single/product/$1',
    'single/([0-9]+)' => 'single/product/$1',

    'cart/add/([0-9]+)' => 'cart/add/$1',
    'cart/sub/([0-9]+)' => 'cart/sub/$1',
    'cart/clear' => 'cart/clear',
    'cart/info' => 'cart/info',

    'error' => 'site/error',
    'contact' => 'site/contact',

    'index' => 'site/index',
    '' => 'site/index'


);
