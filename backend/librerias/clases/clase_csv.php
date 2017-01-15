<?php

namespace librerias\clases;


class csv {
		
	
	public function exportar($pdo, $sql, $archivo){		
		
		$stmt = $pdo->prepare($sql);		
		
		$stmt->execute();		
		
		$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);		
		
		$f = fopen('php://output', 'w');		
		
		header("Content-Type: text/csv");
		
		header("Content-Disposition: attachement; filename='$archivo.csv'");
		
		header("Pragma: no-cache");
		
		header("Expires: 0");		
		
		foreach ($rows as $line) {			
			
			fputcsv($f, $line);			
			
		}		
		
		fclose($f);		
		
		exit;		
		
	}	
	
	
	public function importar($sql){			
		
		
		$csv_file =  $_FILES['csv_file']['tmp_name'];	
		
		
		if (is_file($csv_file)) {			
			
			
			$handle = fopen($csv_file, "r");
			
			try {
				
				#prepare for insertion
				$query = $pdo->prepare($sql);
				
				
				//unset the first line like this       
				fgets($handle);
				
				
				//created loop here
				while (($data = fgetcsv($handle, 1000, ',')) !== FALSE) {
					
					$query->execute($data);
					
				}				
				
				fclose($handle);				
				
			}
			catch(PDOException $e) {
				
				die($e->getMessage());
				
			}		
			
			echo 'file imported';			
			
			
		}			
		
	}
	
}