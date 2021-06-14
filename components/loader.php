<?php

spl_autoload_register(array('Loader', 'autoload_components_class'));
spl_autoload_register(array('Loader', 'autoload_controllers_class'));
spl_autoload_register(array('Loader', 'autoload_models_class'));
spl_autoload_register(array('Loader', 'autoload_views_class'));
spl_autoload_register(array('Loader', 'autoload_libs_class'));


class Loader {
    
    public static function autoload_components_class($class_param) {
        $class_param = strtolower($class_param);
        $path = ROOT."/components/$class_param.php";
        if (file_exists($path)) {require_once "$path";}
            
    }
    
    public static function autoload_controllers_class($class_param) {
        $path = ROOT."/controllers/$class_param.php";
        if (file_exists($path)) {require_once "$path";}
    }
    
    public static function autoload_models_class($class_param) {
        $path = ROOT."/models/$class_param.php";
       if (file_exists($path)) {require_once "$path";}
    }

    
    public static function autoload_views_class($class_param) {
        $path = ROOT."/views/$class_param.php";
        if (file_exists($path)) {require_once "$path";}
    }
    
    public static function autoload_libs_class($class_param) {
        $path = ROOT."/libs/$class_param.php";
        if (file_exists($path)) {require_once "$path";}
    }
}