<?php

#require('clase_consulta_bd.php');
require_once './../run.php';

use librerias\db\consulta_bd;

$objeto = new consulta_bd();


$datos_respuesta = array();
$numero = count($_SESSION);
$tags = array_keys($_SESSION); // obtiene los nombres de las varibles
$valores = array_values($_SESSION); // obtiene los valores de las varibles

$datos_respuesta["cantidad_variables_session"] = count($_SESSION);



if (!empty($_SESSION['identificacion']) and isset($_SESSION['identificacion'])) {

    $datos_respuesta["sql"] = $objeto->usuario_online();
    $datos_respuesta["mensaje"] = "existe una session";
    
} else {

    $datos_respuesta["mensaje"] = "no hay una session iniciada";
    @session_destroy();
}


if ($numero > 0) {

    for ($i = 0; $i < $numero; $i++) {

        $valor_session = (!empty($valores[$i]) and isset($valores[$i]) and ! is_null($valores[$i]) and ! is_array($valores[$i])) ? utf8_encode($valores[$i]) : $valores[$i];

        $datos_respuesta[$tags[$i]] = $valor_session;
    }

    $datos_respuesta["session"] = true;
} else {

    $datos_respuesta["session"] = false;
    @session_destroy();
}

#print_r($datos_respuesta);
print json_encode($datos_respuesta);