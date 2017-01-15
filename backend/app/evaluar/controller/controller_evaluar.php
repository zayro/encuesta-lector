<?php

require_once('../../../run.php');

/* LIBRERIAS CONFIGURACION PERSONAL */
use librerias\clases\sistema;

use app\evaluar\model\evaluaciones;

$objeto = new evaluaciones();

if(!isset($id)){

    $args = explode("/", trim($_SERVER['REQUEST_URI'], "/"));

// $encontrado = array_shift($args);

    $id = array_pop($args);
}


switch ($_SERVER['REQUEST_METHOD']) {
	
	case 'GET':  
	
	try{

		if(isset($id) and is_numeric($id)){

            if(isset($libros)){$resultados =  $objeto->buscar_texto($id);}

            if(isset($preguntas)){$resultados =  $objeto->buscar_pregunta($id, $identificacion);}			            			

            if(isset($aulas)){$resultados =  $objeto->buscar_aulas($id);}

            if(isset($respuestas)){$resultados =  $objeto->buscar_respuestas($id);}          
            
			
		}
		else{		
			
            if(isset($respuestas_alumnos)){$resultados =  $objeto->buscar_respuestas_alumnos($identificacion);}

            if(isset($consultar_categoria)){$resultados = $objeto->consultar_categoria(); }
			          

		}		
	}
	
	catch (Exception $e){
		
        $mensaje['suceso'] = $e->getMessage();
        $mensaje['code'] = $e->getCode();
        $mensaje['linea'] = $e->getLine();
        $mensaje['rastro'] = $e->getTrace();
        $mensaje['rastreo'] = $e->getTraceAsString();
        $mensaje['previos'] = $e->getPrevious();
        $mensaje['Archivo'] = $e->getFile();        
        $mensaje['success'] = false;	

        $resultados =json_encode($mensaje);
        
	}

    print ($resultados);
		
	break;
	
	case 'POST':
	
    try{
    $dato = json_decode(file_get_contents('php://input'), true);

	$resultados = $objeto->guardar_respuesta($dato); 

    #$resultados =  $objeto->guardar($dato);
    
    }catch (Exception $e){
		
        $mensaje['suceso'] = $e->getMessage();
        $mensaje['code'] = $e->getCode();
        $mensaje['linea'] = $e->getLine();
        $mensaje['rastro'] = $e->getTrace();
        $mensaje['rastreo'] = $e->getTraceAsString();
        $mensaje['previos'] = $e->getPrevious();
        $mensaje['Archivo'] = $e->getFile();
        $mensaje['Datos'] = $dato;          
        $mensaje['success'] = false;	

        $resultados =json_encode($mensaje);
        
	}

    print $resultados;    	
	
	break;
	
	
	case 'PUT':

	if(isset($id)){

    try{		

        $resultados = $objeto->actualizar($id); 
    
    }catch (Exception $e){
		
        $mensaje['suceso'] = $e->getMessage();
        $mensaje['code'] = $e->getCode();
        $mensaje['linea'] = $e->getLine();
        $mensaje['rastro'] = $e->getTrace();
        $mensaje['rastreo'] = $e->getTraceAsString();
        $mensaje['previos'] = $e->getPrevious();
        $mensaje['Archivo'] = $e->getFile();        
        $mensaje['success'] = false;	

        $resultados =json_encode($mensaje);
        
	}

    print $resultados;		
		
	}	
	
	break;

    case 'DELETE':

    	if(isset($id)){
		
		$dato = json_decode(file_get_contents('php://input'), true);		
		
		print $objeto->logout($id);
		
	}

    break;
    
	
	
}


?>