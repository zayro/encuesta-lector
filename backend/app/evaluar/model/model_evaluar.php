<?php 

namespace app\evaluar\model;
#require_once('../../../../run.php');

use app\config\conexion;




class evaluaciones extends conexion {


public function buscar_texto($id) {

$sql = "SELECT *
FROM
evaluar.textos	
WHERE
id = ?      
";

$params = array("$id");

$rows = $this->query_secure($sql,  $params, true, true);		

$result = array("total" => $this->rowcount(), "registros"=>$rows, "instancia"=>"buscar texto");		

return json_encode($result);

$this->disconnect();

}

public function buscar_pregunta($id, $identificacion) {

$verificar = "SELECT
evaluar.textos. ID AS texto,
evaluar.pregunta. ID AS pregunta,
evaluar.opcion. ID AS opcion,
evaluar.pregunta.preguntas,
evaluar.opcion.opciones,
evaluar.resultados.identificacion
FROM
evaluar.textos
INNER JOIN evaluar.pregunta ON evaluar.pregunta.id_texto = evaluar.textos.id 
INNER JOIN evaluar.opcion ON evaluar.opcion.id_pregunta = evaluar.pregunta.ID
INNER JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID 
WHERE
evaluar.resultados.identificacion = ? and evaluar.textos.id = ?
";


$params = array($identificacion, $id);

$rows = $this->query_secure($verificar,  $params, true, true);        

if($this->rowcount() == 0){	

$sql = "SELECT
evaluar.pregunta.id,
evaluar.pregunta.preguntas,
evaluar.opcion.opciones,
evaluar.opcion.id
FROM
evaluar.textos
INNER JOIN evaluar.pregunta ON evaluar.pregunta.id_texto = evaluar.textos.id
INNER JOIN evaluar.opcion ON evaluar.opcion.id_pregunta = evaluar.pregunta.id
WHERE evaluar.textos.id = ?  
";

$params = array("$id");

$rows = $this->query_secure($sql,  $params, true, true);		

$result = array("total" => $this->rowcount(), "registros"=>$rows, "instancia"=>"buscar texto");		

return json_encode($result);
}

$this->disconnect();

}

public function buscar_aulas($identificacion){

$sql = " SELECT
g.nombre,
i.nombres,
a.nombre AS cursos,
a.id AS id
FROM
proyecto.informacion AS i
INNER JOIN proyecto.usuarios AS u ON u.identificacion = i.identificacion
INNER JOIN proyecto.grupo AS g ON g.id = u.id_grupo
INNER JOIN evaluar.relacion_aulas AS r ON r.identificacion = u.identificacion
INNER JOIN evaluar.aula AS a ON r.id_aulas = a.id
WHERE
u.identificacion = ?  ";

$params = array("$identificacion");

$rows = $this->query_secure($sql,  $params, true, true);		

$result = array("total" => $this->rowcount(), "registros"=>$rows, "instancia"=>"buscar aulas");		

return json_encode($result);

$this->disconnect();

}

public function buscar_respuestas_alumnos($identificacion){

$sql="SELECT DISTINCT
proyecto.informacion.nombres,
proyecto.informacion.apellidos,
proyecto.informacion.identificacion,
evaluar.textos.titulo AS lectura,
evaluar.textos.id AS texto,
evaluar.aula.nombre,
evaluar.resultados.created_at as fecha,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.pregunta.id_nivel = 1
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS total_literal,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.pregunta.id_nivel = 2
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS total_intertextual,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.pregunta.id_nivel = 3
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS total_critico,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.pregunta.id_nivel = 4
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS total_inferencial,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.opcion.correcta = 't'
AND evaluar.pregunta.id_nivel = 1
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS literal,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.opcion.correcta = 't'
AND evaluar.pregunta.id_nivel = 2
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS intertextual,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.opcion.correcta = 't'
AND evaluar.pregunta.id_nivel = 3
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS critico,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.opcion.correcta = 't'
AND evaluar.pregunta.id_nivel = 4
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS inferencial,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.opcion.correcta = 't'
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS correctas,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.id
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS total
FROM
evaluar.textos
INNER JOIN evaluar.pregunta ON evaluar.pregunta.id_texto = evaluar.textos.ID
INNER JOIN evaluar.opcion ON evaluar.opcion.id_pregunta = evaluar.pregunta.ID
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
INNER JOIN proyecto.usuarios ON evaluar.resultados.identificacion = proyecto.usuarios.identificacion
INNER JOIN evaluar.relacion_aulas ON evaluar.relacion_aulas.identificacion = proyecto.usuarios.identificacion
INNER JOIN evaluar.aula ON evaluar.relacion_aulas.id_aulas = evaluar.aula.ID
INNER JOIN proyecto.informacion ON proyecto.usuarios.identificacion = proyecto.informacion.identificacion
WHERE
evaluar.resultados.identificacion = ?";

$params = array("$identificacion");

$rows = $this->query_secure($sql,  $params, true, true);		

$result = array("total" => $this->rowcount(), "registros"=>$rows, "instancia"=>"buscar respuestas alumnos");		

return json_encode($result);

$this->disconnect();

}


public function buscar_respuestas($aula, $desde, $hasta){
$sql="SELECT DISTINCT
evaluar.resultados.created_at AS fecha,
proyecto.informacion.nombres,
proyecto.informacion.apellidos,
proyecto.informacion.identificacion,
evaluar.textos.titulo AS lectura,
evaluar.textos.id AS texto,
evaluar.aula.nombre,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.pregunta.id_nivel = 1
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS total_literal,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.pregunta.id_nivel = 2
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS total_intertextual,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.pregunta.id_nivel = 3
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS total_critico,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.pregunta.id_nivel = 4
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS total_inferencial,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.opcion.correcta = 't'
AND evaluar.pregunta.id_nivel = 1
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS literal,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.opcion.correcta = 't'
AND evaluar.pregunta.id_nivel = 2
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS intertextual,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.opcion.correcta = 't'
AND evaluar.pregunta.id_nivel = 3
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS critico,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.opcion.correcta = 't'
AND evaluar.pregunta.id_nivel = 4
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS inferencial,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.opcion.correcta = 't'
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS correctas,
(
SELECT
COUNT(*)
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.id
WHERE
evaluar.resultados.identificacion = proyecto.informacion.identificacion
AND evaluar.pregunta.id_texto = evaluar.textos.id
) AS total
FROM
evaluar.textos
INNER JOIN evaluar.pregunta ON evaluar.pregunta.id_texto = evaluar.textos.ID
INNER JOIN evaluar.opcion ON evaluar.opcion.id_pregunta = evaluar.pregunta.ID
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
INNER JOIN proyecto.usuarios ON evaluar.resultados.identificacion = proyecto.usuarios.identificacion
INNER JOIN evaluar.relacion_aulas ON evaluar.relacion_aulas.identificacion = proyecto.usuarios.identificacion
INNER JOIN evaluar.aula ON evaluar.relacion_aulas.id_aulas = evaluar.aula.ID
INNER JOIN proyecto.informacion ON proyecto.usuarios.identificacion = proyecto.informacion.identificacion
WHERE
evaluar.aula.id = ?
AND 	evaluar.resultados.created_at  BETWEEN ? AND ?
ORDER BY
fecha DESC";

$params = array("$aula", "$desde.'  00:00:01'", "$hasta.' 23:59:59'");

$rows = $this->query_secure($sql,  $params, true, true);


$result = array("total" => $this->rowcount(), "registros"=>$rows, "instancia"=>"buscar respuestas ");		

return json_encode($result);

$this->disconnect();

}

public function exportar_buscar_respuestas($aula, $desde, $hasta){
$sql="SELECT DISTINCT
	evaluar.resultados.created_at AS fecha,
	proyecto.informacion.nombres,
	proyecto.informacion.apellidos,
	proyecto.informacion.identificacion,
	evaluar.textos.titulo AS lectura,
	evaluar.aula.nombre,
	(
		SELECT
			COUNT(*)
		FROM
			evaluar.pregunta
		INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
		LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
		WHERE
			evaluar.resultados.identificacion = proyecto.informacion.identificacion
		AND evaluar.opcion.correcta = 't'
		AND evaluar.pregunta.id_texto = evaluar.textos.id
	) AS correctas,
	(
		SELECT
			COUNT(*)
		FROM
			evaluar.pregunta
		INNER JOIN evaluar.opcion ON evaluar.pregunta.id = evaluar.opcion.id_pregunta
		LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.id
		WHERE
			evaluar.resultados.identificacion = proyecto.informacion.identificacion
		AND evaluar.pregunta.id_texto = evaluar.textos.id
	) AS total,
	(
		SELECT
			ROUND (ABS((correctas * 7) / total), 1)
	) AS nota
FROM
	evaluar.textos
INNER JOIN evaluar.pregunta ON evaluar.pregunta.id_texto = evaluar.textos.ID
INNER JOIN evaluar.opcion ON evaluar.opcion.id_pregunta = evaluar.pregunta.ID
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.ID
INNER JOIN proyecto.usuarios ON evaluar.resultados.identificacion = proyecto.usuarios.identificacion
INNER JOIN evaluar.relacion_aulas ON evaluar.relacion_aulas.identificacion = proyecto.usuarios.identificacion
INNER JOIN evaluar.aula ON evaluar.relacion_aulas.id_aulas = evaluar.aula.ID
INNER JOIN proyecto.informacion ON proyecto.usuarios.identificacion = proyecto.informacion.identificacion
WHERE
evaluar.aula.id = '$aula'
AND evaluar.resultados.created_at BETWEEN  '$desde 00:00:01' AND '$hasta 23:59:59'
ORDER BY
fecha DESC";

return $sql;

}

public function buscar_respuestas_detallado($aula){

$sql = "SELECT
evaluar.opcion.correcta,
evaluar.opcion.opciones,
evaluar.pregunta.preguntas,
evaluar.resultados.identificacion,
evaluar.resultados.id_opcion,
evaluar.aula.nombre
FROM
evaluar.pregunta
INNER JOIN evaluar.opcion ON evaluar.opcion.id_pregunta = evaluar.pregunta.id
LEFT JOIN evaluar.resultados ON evaluar.resultados.id_opcion = evaluar.opcion.id
INNER JOIN proyecto.usuarios ON evaluar.resultados.identificacion = proyecto.usuarios.identificacion
INNER JOIN evaluar.relacion_aulas ON evaluar.relacion_aulas.identificacion = proyecto.usuarios.identificacion
INNER JOIN evaluar.aula ON evaluar.relacion_aulas.id_aulas = evaluar.aula.id
WHERE
evaluar.aula.id = ? 
";

$params = array("$aula");

$rows = $this->query_secure($sql,  $params, true, true);		



$result = array("total" => $this->rowcount(), "registros"=>$rows, "instancia"=>"buscar respuestas detallado");		

return json_encode($result);

$this->disconnect();

}    



public function consultar_categoria() {

$sql = "select c.nombre as categoria, t.titulo, t.sinopsis, t.id from evaluar.categoria as c INNER JOIN evaluar.textos as t on c.id = t.id_categoria";

$rows = $this->query($sql);		

$result = array("total" => $this->rowcount(), "registros"=>$rows, "instancia"=>"consultar categoria");	

return json_encode($result);

$this->disconnect();
}

public function guardar_respuesta($dato){    

for($i=0; $i < sizeof($dato['id_opcion']); ){

#$id_pregunta =  $dato['id_pregunta'][$i];  
$id_opcion = $dato['id_opcion'][$i];
$identificacion =  $dato['identificacion'];

$sql = "INSERT INTO evaluar.resultados (id_opcion, identificacion) VALUES (?,?)";

$params = array($id_opcion, $identificacion);

$result = $this->query_secure($sql,  $params, false, true);   

$i++;

}      

if($result===false){

$error =  array("error" => $db->getError(), "datos" => $dato);
return json_encode($error);

}else{

$result = array("insertados" => $this->rowcount());
return json_encode($result);
}



$this->disconnect();		

}



}
