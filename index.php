<?php

session_start();


//$_SESSION['products'][8]['price']= 156;
//$_SESSION['products'][5]['price']= 978;


// var_dump($_SESSION['products']);
//FRONT CONTROLLERS

//1. Общие настройки

ini_set('display_errors', 1);
error_reporting(E_ALL);


//2. Подключение файлов системы

define('ROOT', dirname(__FILE__));


require_once ROOT.'/components/loader.php';
require_once ROOT.'/configs/config.php';
//3. установка соединения бд


//4. вызов router

$router = new Router();
$router->run();