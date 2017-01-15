<?php


/* * To change this license header, choose License Headers in Project Properties. * To change this template file, choose Tools | Templates * and open the template in the editor. */



/** * Description of ofuscar * * @author Marlon Zayro Arias Vargas */


class ofuscar {
	
	
	public function ofuscar_archivo($ruta){        

        if(is_file($ruta)){	
		
		
		$gestor = fopen($ruta, "r");        
		
		
		$texto = base64_encode(gzdeflate(fread($gestor, filesize($ruta)),9));
		
		
		fclose($gestor);
		
		
		$gestor = fopen($ruta."_ofuscado.php","w");
		
		
		fwrite($gestor, '<?php eval(gzinflate(base64_decode("'.$texto.'"))); ?>');
		
		
		fclose($gestor);

        }else{

            echo "ruta del archivo no existe: ".$ruta;
        }
		
		
		
	}
	
	
}

/*

*/

$objeto = new ofuscar();

# muestra la ruta actual
#echo getcwd();

if(file_exists('pruebas.php')){ echo "ruta existe"; }

echo '<br>';


$objeto->ofuscar_archivo('pruebas.php');