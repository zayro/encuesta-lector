<?php

namespace librerias\clases;

//require_once('../run.php');

use app\config\conexion;

class excel extends conexion
{
public function exportar($query, $filename, $caption){
  //header("Content-Type: application/vnd.ms-excel");


  header('Content-Type: application/vnd.ms-excel; charset=utf-8');
  header('Content-type: application/x-msexcel; charset=utf-8');
  header("Content-Disposition: attachment; filename=$filename.xls");
  header('Pragma: no-cache');
  header('Expires: 0');

  //header('Content-Type: text/html; charset=utf-8');



  $nombres = $this->query($query, 'named');

  $fields = array_keys($nombres);
  $count = count($fields);

  echo " 
  <!DOCTYPE html>
<html>

<head>
    <meta charset='UTF-8'>
</head>
<body>
<table border='1'>
<caption>$caption</caption>
";

  echo '<tr>';

  for ($i = 0; $count > $i; ++$i){
    echo '<th>'.$fields[$i].'</th>';
  }

  echo '</tr>';

  foreach ($this->query($query, 'both') as $row) {
    echo '<tr>';

  for ($i = 0; $count > $i; ++$i){
    echo '<td>'.($row[$i]).'</td>';
  }	


    echo '</tr>';
  }

    echo '</table>
    
    </body>
</html>';



    }
  }

/*
  $instance = new excel();

  $instance->exportar('select * from demo', 'report');

  */

?>



  