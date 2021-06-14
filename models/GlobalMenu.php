<?php

class GlobalMenu {
    public static function returnArrayMenu() {
        $myDB = new SafeMySQL();
        
        $myselect = "SELECT * FROM sections WHERE status=1 ORDER BY sort, name";
        
        $allarray = $myDB->getAll($myselect);
        
        $arrayMenu = array();
        
        $i = 0;
        
        foreach ($allarray as $value) {
            $arrayMenu[$i++] = array("name"=>$value['name'], "id"=>$value['id']);
        }
        
        $kolinsection = 25;
        for ($k=0; $k<count($arrayMenu);$k++) {
            $id = $arrayMenu[$k]["id"];
            
            $myselect = "SELECT * FROM categories WHERE status=1 AND section=?i ORDER BY sort, name";
            $allarray = $myDB->getAll($myselect, $id);
            $i = 0;
            
            foreach ($allarray as $value) {
                $t = floor($i/$kolinsection);
                $ind = $i-$t*$kolinsection;
                $arrayMenu[$k]["categories"][$t][$ind] = array("name"=>$value['name'], "id"=>$value['id']);
                $i++;
            }
            $myselect = "SELECT * FROM brends WHERE status=1 AND section=?i ORDER BY sort, name";
            $allarray = $myDB->getAll($myselect, $id);
            $i=0;
            foreach ($allarray as $value) {
                $t = floor($i/$kolinsection);
                $ind = $i-$t*$kolinsection;
                $arrayMenu[$k]["brends"][$t][$ind] = array("name"=>$value['name'], "id"=>$value['id']);
                $i++;
            }
        }
        
       // var_dump($arrayMenu);
      //  die();
        return $arrayMenu;
    }
}