<?php  

class Db{
 private static $conexion=NULL;
 private function __construct(){}

 public static function conectar (){
  $pdo_options[PDO::ERRMODE_EXCEPTION;]
  self::$conexion= new PDO('mysql:host=localhost;dbname=curso','root','',$pdo_options); 
  return self::$conexion; 
 }     
}
?>