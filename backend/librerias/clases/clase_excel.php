<!DOCTYPE html>
<html lang="en">
  <head>
    <title></title>
    <meta charset="UTF-8">
    
  </head>
  <body>
  

<?php

#$db = new DBMS("mysql", "31.220.20.208", "u769767837_moto", "u769767837_moto", "zayro2016", "3306");
class Conexion extends PDO {
	
	
	private $tipo_de_base = 'mysql';
	
    private $host = 'mysql.hostinger.co';
	
	private $nombre_de_base = 'u769767837_nh';
	
	private $usuario = 'u769767837_nh';
	
	private $contrasena = 'zayro2016';	
	
	
	public function __construct() {	
		
		try{			
			
			parent::__construct($this->tipo_de_base.':host='.$this->host.';dbname='.$this->nombre_de_base, $this->usuario, $this->contrasena);			
			
		}
		
		catch(PDOException $e){			
			
			echo 'Ha surgido un error y no se puede conectar a la base de datos. Detalle: ' . $e->getMessage();			
			
			exit;			
			
		}
		
		
	}
	
	
}


$conexion = NEW Conexion;

$filename="reporte.xls";

#header("Content-Type: application/vnd.ms-excel");
header("Content-Type: application/vnd.ms-excel; charset=utf-8");
header("Content-type: application/x-msexcel; charset=utf-8");
header("Content-Disposition: attachment; filename=$filename");
header("Pragma: no-cache");
header("Expires: 0");

$query = "SELECT * from urbano order by ID desc";

$sth = $conexion->prepare($query);

$sth->execute();


$nombres = $sth->fetch(PDO::FETCH_NAMED);

print("\n");


$fields = array_keys($nombres);
$count = count($fields);


print "<table border='1'>";

print "<tr>";

for ($i = 0 ; $count>$i; $i++){
	
	print "<th>". $fields[$i] . "</th>";
	
}

print "</tr>";



foreach ($conexion->query($query) as $row) {

 	print "<tr>";
	
for ($i = 0 ; $count>$i; $i++){
	
	print "<td>". $row[$i] . "</td>";
	
}	


	print "</tr>";	
}



print "</table>";




?>

  </body>
</html>

