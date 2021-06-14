<?php

class ValidateUser {
    
    public static function Validate($email, $password)  {
     $myDB = new SafeMySQL();
     
     $result = $myDB->getRow("SELECT email, password FROM users WHERE email LIKE ?s", $email);
     
     if($result) {
       if(empty($result["email"])) {
           return false;
       } else if ($password !== $result["password"]) {
           return false;
       }
       
       return true;
       
     } else {
         return false;
     }
     
}

public static function isValidate()  {
     
    return isset($_SESSION['email']);
     
}
}

