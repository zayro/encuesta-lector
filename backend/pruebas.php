<?php

echo "hola mundo";

/*
require_once 'run.php';
use librerias\clases\sistema;

$base_url = sistema::getCurrentUri();

$routes = array();

$routes = explode('/', $base_url);

print_r($routes);

foreach($routes as $route)
{
	
	if(trim($route) != ''){
	array_push($routes, $route);
    }
	
}


print_r($route);