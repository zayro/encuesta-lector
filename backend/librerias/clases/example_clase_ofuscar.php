<?php

include "clase_ofuscar.php";

$objeto = new ofuscar();

//echo getcwd();

if(file_exists('pruebas.php')){ echo "ruta existe"; }

echo '<br>';


$objeto->ofuscar_archivo('pruebas.php');
?>