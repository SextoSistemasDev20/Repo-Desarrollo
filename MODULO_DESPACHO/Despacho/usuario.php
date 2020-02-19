<?php
class usuario{
     private $id;
     private $nom_usu;
     private $ced_usu;
     private $dom_usu;
     private $tel_usu;

     function __construct(){}

     public function getNombre(){
     return $this->nombre;	
     }

     public function setNombre($nom_usu){
         $this->nom_usu = $nom_usu;

     }
      
     public function getCedula(){
     	return $this->cedula;
     }

     public function setCedula($ced_usu){
     	$this->cedula=$ced_usu;
 

     } 





}

?>