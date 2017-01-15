<?php

require_once('../../../run.php');

/* LIBRERIAS CONFIGURACION PERSONAL */
use librerias\clases\sistema;

#use Exception;
use app\usuario\model\usuarios;

$objeto = new usuarios();

$args = explode("/", trim($_SERVER['REQUEST_URI'], "/"));

// $encontrado = array_shift($args);

$id = array_pop($args);


switch ($_SERVER['REQUEST_METHOD']) {
	
	case 'GET':  
	
	try{

		if(isset($id) and is_numeric($id) ){	

			$resultados =  $objeto->buscar($id);            			
			
		}
		else{		
			
			$resultados = $objeto->consultar();           

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
	
    /*
    $datos = file_get_contents("php://input");
    parse_str($datos);
    */

	
    try{
	
	$dato = json_decode(file_get_contents('php://input'), true);
    
	
	if(isset($dato['usuario']) and isset($dato['clave']) ){	

	$resultados =  $objeto->login($dato['usuario'], $dato['clave']);  

	}


    
    
    }catch (Exception $e){

        $resultados = "";
		
        $mensaje['suceso'] = $e->getMessage();
        $mensaje['code'] = $e->getCode();
        $mensaje['linea'] = $e->getLine();
        $mensaje['rastro'] = $e->getTrace();
        $mensaje['rastreo'] = $e->getTraceAsString();
        $mensaje['previos'] = $e->getPrevious();
        $mensaje['Archivo'] = $e->getFile();        
        $mensaje['success'] = false;	

        $resultados = json_encode($mensaje);
        
	}

    print $resultados;    	
	
	break;
	
	
	case 'PUT':


	
	break;

    case 'DELETE':


    break;
    
	
	
}


?>