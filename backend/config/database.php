<?php

namespace config;

#require_once('../run.php');

use librerias\Pdo\DBMS;


class conexion extends DBMS {
	
	
	public function __construct() {
		
		
		$database_type = "mysql";
		
		$host= "localhost" ;
		
		$database = "proyecto";
		
		$user = "root";
		
		$password = "zayro";
		
		$port = "3306";
		
		
		parent::__construct($database_type, $host, $database, $user, $password, $port);
		
		$this->Cnxn();
		
		print_r($this->getError());
		#print "exitoso";
		
	}
	
}

#$instancia = new conexion();


?>