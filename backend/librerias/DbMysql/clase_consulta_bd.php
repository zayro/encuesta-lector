<?php

#include('clase_conexion.php');
namespace librerias\DbMysql;

/**
 * CLASE DE PROCESOS A LA BASE DE DATOS
 *
 * En esta parte nos encargamos de crear los tipos de conexion del proyecto
 * para poder asi administrar los tipos de permisos de acceso
 *
 * @method consulta_bd () se realiza la conexion es el constructor
 * @author MARLON ZAYRO ARIAS VARGAS
 * @package clase
 * @category consulta
 */
use librerias\db\conexion;
use Exception;
use \Firebase\JWT\JWT;

class consulta_bd extends conexion  {

  /**
   * guarda los resultados de consulta unida
   * @var type $guardar_registros
   */
  public $guardar_registros = array();

  /**
   * CONSTRUCTOR DE LA CLASE CONSULTA_BD
   */
  public function __construct() {
   $this->conexiones();
  }
  
  /**
   * SABER SI EL USUARIO ESTA ACTIVO EN LA BASE DE DATOS
   * @param type $identificacion
   * @return type
   */
  public function usuario_online() {

   $identificacion =  $_SESSION['identificacion'];
   $ip = $_SESSION['ip'];
   
   

    $sql = "SELECT COUNT(*) AS conectado FROM estructura_proyecto.enlinea WHERE identificacion = '$identificacion' and ip = '$ip' ; ";

    $resultado = $this->consulta($sql);

    if (!$resultado) {
      throw new Exception("ERROR usuario_online: $sql");
    }   

    if($resultado->num_rows == '0'){
      @session_destroy();
     #return exit();
    }
    
    $resultado->close();



    return $sql;
  }
  
  public function CabeceraToken(){
    $headers = apache_request_headers();
    return isset($headers['Authorization'])?$headers['Authorization']:"";
  }
  
  public function GenerarToken($datos){
  $key = "ZAV2016?*";
  return  JWT::encode($datos, $key, 'HS256');    
  }
  
  public function DevolverToken($datos){
    $key = "ZAV2016?*";
    return  JWT::decode($datos, $key, array('HS256'));    
  }
  
  /**
   * LAS CONSULTAS SERAN DEVUELTAS EN FORMATOS JSON
   *
   *
   * @param type $sql se le envia la consulta a la base de datos
   * @return $sql retorna los mensajes despues de ejecutar la consulta y la auditoria
   * @throws Exception dispara la consulta que se encuentre mal generada
   *
   */
  public function json_bd($sql) {

  $this->cabecera_json();
  $this->cabecera_cors();
    #MOSTRAR EL MENSAJE EN JSON

    $datos_json = array();


    #GUARDA TEMPORALMENTE LOS RESULTADOS

    $items = array();

    $resultado_json = $this->consulta($sql);


    if (!$resultado_json) {

      throw new Exception("ERROR: $sql");
    }


    while ($row = $resultado_json->fetch_object()) {

      array_push($items, $row);
    }

    # iberar el conjunto de resultados
    $resultado_json->close();



    return $items;
  }

  /**
   * DEVUELVE UNA CONSULTA JSON
   * @param type $sql
   * @return type
   * @throws Exception
   */
  public function consulta_json($sql) {

    #conexion::cabecera_json();
    #MOSTRAR EL MENSAJE EN JSON

    $resultado_json = $this->consulta($sql);

   if (!$resultado_json) {

       return $sql;
    }
    
       if ($resultado_json->num_rows > 0) {
      $row = $resultado_json->fetch_object();
      $row->registros_encontrado = $resultado_json->num_rows;
    }else{
    $row['registros_encontrado'] = '0';
    $row['sql'] = $sql;
    }
    # liberar el conjunto de resultados
    #$resultado_json->close();



    return $row;
  }
  
  /**
   *
   * @param type $sql se van guardando las consultas en $guarda_registros
   */
  public function consulta_unida($sql) {

    $resultado = $this->mysqli->query($sql);

    while ($registros = $resultado->fetch_object()) {

      array_push($this->guardar_registros, $registros);
    }
  }

   /**
   * SE EJECUTA CONSULTAS SOLO SELECTs
   *
   * @param type $sql se recibe la consulta para ejecutar solo select
   * @return type
   */
   protected function consulta($sql) {

    $buscar_minuscula = stristr($sql, 'select');
    $buscar_mayuscula = stristr($sql, 'SELECT');
    $buscar_mayuscula_set = stristr($sql, 'SET');
    $buscar_minuscula_Set = stristr($sql, 'set');

    if ($buscar_minuscula or $buscar_mayuscula or $buscar_mayuscula_set or $buscar_minuscula_Set){
    
     return $this->mysqli->query($sql);
     
    }else{
      echo "ERROR AL ENVIAR CONSULTA DEBE CONTENER SELECT";     
      return "NO CUMPLE LA CONDICION SELECT";
    }

    return false;
  }

  /**
   * ESCAPE DE STRING PARA MYSQL
   * 
   * @param String $sql
   * @return type
   */
  public function real_escape_string($sql){

     return $this->mysqli->real_escape_string($sql);

  }

  /**
   * MULTI CONSULTAS
   * @param type $query
   */
  public function multi_consulta($query) {

    $items = array();

    /* ejecutar multi consulta */
    if ($this->mysqli->multi_query($query)) {
      do {
        /* almacenar primer juego de resultados */
        if ($result = $this->mysqli->store_result()) {

          while ($row = $result->fetch_object()) {
             array_push($items, $row);
          }
          return $items;
          $result->free();
        }
        /* mostrar divisor */
        if ($this->mysqli->more_results()) {
          printf("-----------------\n");
        }
      } while (@$this->mysqli->next_result());
    }
  }

  public function multi_query($sql){ return $this->mysqli->multi_query($sql); }
  public function store_result(){ return $this->mysqli->store_result(); }
  public function more_results(){ return $this->mysqli->more_results(); }
  public function next_result(){ return @$this->mysqli->next_result(); }

  private function estructura_consultas_multiples_anidadas() {
    $sql1 = "";
    $resultado = $conexion->mysqli->query($sql1);

    while ($row = $resultado->fetch_object()) {

      $sql2 = "";
      $resultado_documentos = $conexion->mysqli->query($sql2);

      $imagenes = array();
      while ($row_documentos = $resultado_documentos->fetch_object()) {
        foreach ($row_documentos as $key => $valor) {


          # agrega dentro de un objeto un array
          $imagenes[] = $valor;

          $row->$key = $imagenes;
        }
      }



      array_push($items, $row);
    }

    $result["registros"] = $items;
    echo json_encode($result);
  }

}
