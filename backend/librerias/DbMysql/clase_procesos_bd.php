<?php

#include('clase_consulta_bd.php');
#include('clase_interfas.php');

namespace librerias\DbMysql;

/**
 * CLASE DE PROCESOS A LA BASE DE DATOS
 *
 * En esta parte nos encargamos de crear los tipos de conexion del proyecto 
 * para poder asi administrar los tipos de permisos de acceso
 * 
 * @author MARLON ZAYRO ARIAS VARGAS
 * @version 1.0
 * @package clase
 * @category procesos
 */
use librerias\db\consulta_bd;
use librerias\db\auditar;
use Exception;

class procesos_bd extends consulta_bd implements auditar {

  public function procesos_bd() {
    $this->conexiones();
  }

  public function preparar_consulta($sql) {
    return $this->mysqli->prepare($sql);
  }

  public function inicia_transaccion() {

    $this->mysqli->autocommit(false);
  }

  public function finaliza_transaccion() {

    $this->mysqli->commit();
  }

  public function cancela_transaccion() {

    $this->mysqli->rollback();
  }

  public function cerrar_conexion() {

    $this->mysqli->close();
  }

  public function ultimo_insert() {

    $this->mysqli->insert_id;
  }

  /**
   * MENSAJE DE AUDITORIA PARA EL USUARIO Y PARA EL SISTEMA
   * @param string $mensaje
   * @param string $sql
   */
  public function auditoria($sql, $mensaje) {

    #MENSAJE DE AUDITORIA PARA EL USUARIO

    $buscar = stristr($sql, 'select');
    $buscar_mayus = stristr($sql, 'SELECT');
    $buscar_insert = stristr($sql, 'inser');
    $buscar_insert_mayus = stristr($sql, 'INSERT');
    $buscar_update = stristr($sql, 'update');
    $buscar_update_mayus = stristr($sql, 'UPDATE');
    $buscar_delete = stristr($sql, 'delete');
    $buscar_delete_mayus = stristr($sql, 'DELETE');

    if ($buscar === FALSE or $buscar_mayus === FALSE or
            $buscar_insert == TRUE or $buscar_insert_mayus == TRUE or
            $buscar_update == TRUE or $buscar_update_mayus == TRUE or
            $buscar_delete == TRUE or $buscar_delete_mayus == TRUE) {

      $convertir = array("'" => "|", '"' => "|");
      $accion_convertida = strtr($sql, $convertir);

      $accion = $this->real_escape_string($sql);


      if (!isset($_SESSION['identificacion'])) {

        $AuditoriaSql = "INSERT INTO `auditoria` (`ip`, `tiempo`, `usuario`, `proceso`, `mensaje`, `archivo`) VALUES ('" . $this->obtener_ip() . "', NOW(), USER(), '$accion' , '$mensaje', '" . $this->ruta_actual() . "');";
        $auditoria_sistema = $this->mysqli->query($AuditoriaSql);

        if (!$auditoria_sistema) {
            $error = $this->mysqli->error;
            $mensaje = $this->real_escape_string($AuditoriaSql);
          throw new Exception("ERROR: $error SQL: $mensaje");
        }

        return "exitosa";
      } else {

        $AuditoriaSql = "INSERT INTO `auditoria` (`ip`, `tiempo`, `usuario`, `proceso`, `mensaje`, `archivo`) VALUES ('" . $this->obtener_ip() . "', NOW(), '" . $_SESSION['identificacion'] . "', '$accion', '$mensaje', '" . $this->ruta_actual() . "');";

        $auditoria_sistema = $this->mysqli->query($AuditoriaSql);

        if (!$auditoria_sistema) {
          $SqlError = $this->real_escape_string($AuditoriaSql);
          $MysqlError = $this->mysqli->error;
          throw new Exception("ERROR: $MysqlError -- SQL: $SqlError");
        }

        return "exitosa";
      }
    }
    return "ESTA ENVIANDO UN SELECT $sql";
  }

  /**
   * CAMBIO DIRECTO A LA BASE DE DATOS SIN AUDITORIA
   *
   * @return $datos retorna los mensajes despues de ejecutar la consulta y la auditoria
   * @throws dispara la consulta que se encuentre mal generada
   * @param string $sql se le envia la consulta a la base de datos
   * @param string $mensaje se le envia un mensaje de auditoria 
   *
   */
  public function alterar_bd($sql, $mensaje) {

    $this->cabecera_json();
    /**
     * MOSTRAR EL MENSAJE EN JSON
     * @var array|null
     */
    $datos = array();

    /**
     * ARMAR SQL PARA AUDITORIA
     * @var array|null
     */
    $query_sql = array();

    /**
     * ARMAR MENSAJE PARA AUDITORIA
     * @var array|null
     */
    $mensaje_auditoria = array();

    try {

      if (!$this->mysqli->query($sql)) {

        throw new Exception("ERROR: $sql");
      }

      $afectaciones = $this->mysqli->affected_rows;


      if ($afectaciones == '0') {
        throw new Exception("NO SE ENCUENTRAS COINCIDENCIAS: $sql");
      }

      $datos['suceso'] = "CONSULTA EXITOSA";
      $datos['success'] = true;
      $datos['sql'] = $sql;
      $datos['afectaciones'] = $afectaciones;
      $datos['auditoria'] = $this->auditoria($sql, $mensaje);
    } catch (Exception $e) {

      $datos['suceso'] = $this->mysqli->error;
      $datos['success'] = false;
      $datos['sql'] = $sql;
      $datos['error'] = $e->getMessage();
    }

    return $datos;
  }

  /**
   * CUALQUIER CAMBIO DIRECTO A LA BASE DE DATOS TIENE QUE PASAR POR AQUI Y TIENE QUE ESTAR REGISTRADO
   *
   * @return $datos retorna los mensajes despues de ejecutar la consulta y la auditoria
   * @throws dispara la consulta que se encuentre mal generada
   * @param string $sql se le envia la consulta a la base de datos
   * @param string $mensaje se le envia un mensaje de auditoria 
   *
   */
  public function alterar_bd_seguro($sql, $mensaje) {

   
    $this->validar_session();
    $this->cabecera_json();

    /**
     * MOSTRAR EL MENSAJE EN JSON
     * @var array|null
     */
    $datos = array();

    /**
     * ARMAR SQL PARA AUDITORIA
     * @var array|null
     */
    $query_sql = array();

    /**
     * ARMAR MENSAJE PARA AUDITORIA
     * @var array|null
     */
    $mensaje_auditoria = array();

    try {

      if (!$this->mysqli->query($sql)) {

        throw new Exception("ERROR: $sql");
      }

      $afectaciones = $this->mysqli->affected_rows;


      if ($afectaciones == '0') {
        throw new Exception("NO SE ENCUENTRAS COINCIDENCIAS: $sql");
      }

      $datos['suceso'] = "CONSULTA EXITOSA";
      $datos['success'] = true;
      $datos['sql'] = $sql;
      $datos['afectaciones'] = $afectaciones;
      $datos['auditoria'] = $this->auditoria($sql, $mensaje);
    } catch (Exception $e) {

      $datos['suceso'] = $this->mysqli->error;
      $datos['success'] = false;
      $datos['sql'] = $sql;
      $datos['error'] = $e->getMessage();
      $datos['code'] = $e->getCode();
      $datos['linea'] = $e->getLine();
      $datos['rastro'] = $e->getTrace();
      $datos['rastreo'] = $e->getTraceAsString();
      $datos['previos'] = $e->getPrevious();
      $datos['Archivo'] = $e->getFile();
    }

    return $datos;
  }

  /**
   * CUALQUIER CAMBIO POR TRANSACCION A LA BASE DE DATOS 
   * 
   * con este metodo podemos realizar transacciones
   * 
   * @param string $sql parametro de sql
   * @param string $mensaje parametro mensaje de auditoria
   * @return array $datos retorna arreglos de datos
   * @throws Exception disparar un error si la consulta no fue exitosa
   */
  public function transaccion($sql, $mensaje) {

    $this->validar_session();
    $this->cabecera_json();

    $datos = array();
    $consulta = $this->mysqli->query($sql);

    if (!$consulta) {
      $error = $this->mysqli->error;
      throw new Exception("ERROR: $sql :: $error :: ");
    }

    $this->auditoria($sql, $mensaje);


    $datos['suceso'] = "CONSULTA EXITOSA";
    $datos['success'] = true;
    $datos['sql'] = $sql;
    $datos['auditoria'] = $mensaje;

    return $datos;
  }

  /**
   * 
   * @param type $query
   * @throws Exception
   */
  public function multiples_consultas($query) {

    $this->validar_session();

    if ($this->mysqli->multi_query($query)) {
      do {
        /* almacenar primer juego de resultados */
        if ($result = $this->mysqli->store_result()) {
          while ($row = $result->fetch_row()) {
            printf("%s\n", $row[0]);
          }
          $result->free();
        }
        /* mostrar divisor */
        if ($this->mysqli->more_results()) {
          printf("------- SE EJECUTA LA SIGUIENTE CONSULTA ----------\n");
        }
      } while ($this->mysqli->next_result());
    } else {
      throw new Exception("ERROR: $query");
    }

    if ($this->mysqli->errno) {
      throw new Exception("ERROR ESPECIFICO: $this->mysqli->error");
    }

    $this->auditoria($query, "SE EJECUTARON MULTIPLES CONSULTAS A LA BASE DE DATOS");
  }

  /**
   * MANEJAR LLAMADOS A PROCEDIMIENTOS ALMACENADOS
   * 
   * devuelve la respuesta de mysql en diferentes consultas
   * 
   * @param string $sql
   * @return type
   * @throws Exception cuando sucede un error en alguna consulta
   */
  public function procedimiento_almacenado($sql, $mensaje) {

    $this->validar_session();
    $this->cabecera_json();

    $datos = array();
    $respuesta = array();

    $error_sql = explode(";", $sql);
    try {
      $numero_consulta = 0;
      if ($this->mysqli->multi_query($sql)) {
        do {
          $numero_consulta++;
          /* almacenar primer juego de resultados */
          if ($result = $this->mysqli->store_result()) {
            while ($row = $result->fetch_object()) {
              array_push($respuesta, $row);
            }
            $result->free();
          }

          /**
           * MUESTRA DIVISION DE LOS MENSAJES DE RESPUESTA DE LAS DIFERENTES CONSULTAS
            if ($this->mysqli->more_results()) {
            echo "<br>";
            }
           * */
        } while (@$this->mysqli->next_result());
      }

      if ($this->mysqli->errno) {
        throw new Exception("ERROR CONSULTA :$numero_consulta ");
      }

      $datos['suceso'] = "CONSULTA EXITOSA";
      $datos['success'] = true;
      $datos['sql'] = $sql;
      $datos['respuestas'] = $respuesta;
      $datos['auditoria'] = $this->auditoria($sql, $mensaje);
    } catch (Exception $e) {

      $datos['suceso'] = $this->mysqli->error;
      $datos['success'] = false;
      $datos['sql'] = $error_sql[$numero_consulta];
      $datos['error'] = $e->getMessage();
    }

    return $datos;
  }

#CIERRA LA CLASE
}

?>