<?php

class Router {
    
    private $routes;
    
    public function __construct() {
       $routesPath = ROOT.'/configs/routes.php';
       $this->routes = include($routesPath);
    }
    
    private function getURI() {
        if(!empty($_SERVER['REQUEST_URI'])) {
            return trim($_SERVER['REQUEST_URI'],'/');
        }
    }
    public function run() {
        $uri = $this->getURI();
        
        foreach ($this->routes as $uriPattern => $path) {
          if (preg_match("~$uriPattern~", $uri)) {
              
              //получаем внутренний маршрут из внешнего адреса
              $internalRoute = preg_replace("~$uriPattern~", $path, $uri);
             
             //разбираем модифицированный внутренний путь
             $segments = explode('/', $internalRoute);
             
             
             $controllerName = ucfirst(array_shift($segments).'Controller');
             
             $actionName = 'action'.ucfirst(array_shift($segments));
             
            //то, что осталось неразобранным, является параметром
            $parameters = $segments;
             
           $controllerFile = ROOT."/controllers/".$controllerName.'.php';
             
             if(file_exists($controllerFile)) {
                 include_once($controllerFile);
             }
             
             $controllerObject = new $controllerName;
             
          
             
             $result = call_user_func_array(array($controllerObject, $actionName), $parameters);
             return $result;
            
          }
                  
        }
        
    }
}

