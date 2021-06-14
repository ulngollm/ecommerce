<?php

class Admin {
    
    public static function getArraySection() {
        
        $myDB = new SafeMySQL();
        $myselect = "SELECT * FROM sections";
        $allarray = $myDB->getAll($myselect);
        
        return $allarray;
    }
    
   public static function getArrayCategory() {
        
        $myDB = new SafeMySQL();
        $myselect = "SELECT * FROM categories";
        $allarray = $myDB->getAll($myselect);
        
        return $allarray;
    }
    
    public static function getArrayBrend() {
        
        $myDB = new SafeMySQL();
        $myselect = "SELECT * FROM brends";
        $allarray = $myDB->getAll($myselect);
        
        return $allarray;
    }
    
    public static function getArrayColor() {
        
        $myDB = new SafeMySQL();
        $myselect = "SELECT * FROM colors";
        $allarray = $myDB->getAll($myselect);
        
        return $allarray;
    }
    
    public static function getArraySize() {
        
        $myDB = new SafeMySQL();
        $myselect = "SELECT * FROM sizes";
        $allarray = $myDB->getAll($myselect);
        
        return $allarray;
    }
   
    
    public static function delSection($id) {
        
        $myDB = new SafeMySQL();
        $myselect = "DELETE FROM sections WHERE id=$id";
        $result = $myDB->query($myselect);
        
        if (intval($result)==1) {
            return "Ok";
        } else {
            return "У секции есть категории и/или бренды!";
        }
    }
    
    public static function delCategory($id) {
        
        
        $myDB = new SafeMySQL();
        $myselect = "DELETE FROM categories WHERE id=$id";
        $result = $myDB->query($myselect);
        
        if (intval($result)==1) {
            return "Ok";
        } else {
            return "В категории есть товары!!";
        }
    }
    
    public static function delBrend($id) {
        
        
        $myDB = new SafeMySQL();
        $myselect = "DELETE FROM brends WHERE id=$id";
        $result = $myDB->query($myselect);
        
        if (intval($result)==1) {
            return "Ok";
        } else {
            return "Хз, что сюда писать!";
        }
    }
    
    public static function delColor($id) {
        
        
        $myDB = new SafeMySQL();
        $myselect = "DELETE FROM colors WHERE id=$id";
        $result = $myDB->query($myselect);
        
        if (intval($result)==1) {
            return "Ok";
        } else {
            return "Хз, что сюда писать!";
        }
    }
    public static function delSize($id) {
        
        
        $myDB = new SafeMySQL();
        $myselect = "DELETE FROM sizes WHERE id=$id";
        $result = $myDB->query($myselect);
        
        if (intval($result)==1) {
            return "Ok";
        } else {
            return "Хз, что сюда писать!";
        }
    }
    
    public static function addSection($name, $sort, $status) {
        
        $myDB = new SafeMySQL();
        $myselect = "INSERT INTO sections (id, name, sort, status) VALUES (null, ?s, ?i, ?i)";
        $result = $myDB->query($myselect, $name, $sort, $status);
        $result = $myDB->insertId();
        
        return $result;
    }
    
    public static function addCategory($name, $section, $sort, $status) {
        
        $myDB = new SafeMySQL();
        $myselect = "INSERT INTO categories (id, name, section, sort, status) VALUES (null, ?s, ?i, ?i, ?i)";
        $result = $myDB->query($myselect, $name, $section, $sort, $status);
        $result = $myDB->insertId();
        
        return $result;
    }
    
    public static function addBrend($name,  $sort, $status, $section) {
        
        $myDB = new SafeMySQL();
        $myselect = "INSERT INTO brends (id, name, sort, status, section) VALUES (null, ?s, ?i, ?i, ?i)";
        $result = $myDB->query($myselect, $name, $sort, $status, $section);
        $result = $myDB->insertId();
        
        return $result;
    }
    
    public static function addColor($name, $r, $g, $b, $code) {
        
        $myDB = new SafeMySQL();
        $myselect = "INSERT INTO colors (id, name, red, green, blue, code) VALUES (null, ?s, ?i, ?i, ?i, ?s)";
        $result = $myDB->query($myselect, $name, $r, $g, $b, $code);
        $result = $myDB->insertId();
        
        return $result;
    }
    
    public static function addSize($name) {
        
        $myDB = new SafeMySQL();
        $myselect = "INSERT INTO sizes (id, name) VALUES (null, ?s)";
        $result = $myDB->query($myselect, $name);
        $result = $myDB->insertId();
        
        return $result;
    }
    
    public static function redactSection($obj) {
        
        $myDB = new SafeMySQL();
        $myselect = "UPDATE sections SET name = ?s, sort = ?i, status = ?i WHERE sections.id = ?i";
        $myDB->query($myselect, $obj->name, $obj->sort, $obj->status, $obj->id);
        return "Ok";
    }
    
   
    
}