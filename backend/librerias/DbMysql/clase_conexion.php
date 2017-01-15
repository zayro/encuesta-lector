<?php


namespace librerias\DbMysql;
#include 'clase_abstracta.php';
/**
 * CLASE DE CONEXION PRINCIPAL
 *
 * En esta parte nos encargamos de crear los tipos de conexion del proyecto
 * para poder asi administrar los tipos de permisos de acceso
 *
 * @author MARLON ZAYRO ARIAS VARGAS <zayro8905@gmail.com>
 * @since 2015-05-02
 * @copyright 2015
 * @package clase
 * @category conexion
 */
 
use Mysqli;
use Exception;
use \Firebase\JWT\JWT;

class conexion extends datos {

  const FECHA_DE_APROBACION = '2015-05-02';
  

  /**
   * CONTIENE LAS PROPIEDADES DE MYSQL
   * @var type objecto mysqli protegido
   */
  public $mysqli;

  /**
   * CONTIENE EL RESULTADO DE LA CONEXION: retorna los mensajes de conexion
   * @var type $array
   */
  public $resultado_conexion = array();

  /**
   * METODO CONECTAR
   *
   * esperamos los  parametro de conexion
   *
   */
  private function conectar() {

    $this->mysqli = @new \mysqli($this->servidores, $this->usuarios, $this->claves, $this->bdd);


    if ($this->mysqli->connect_error) {

      return utf8_encode($this->mysqli->connect_error);
      
    } else {
      
      $this->mysqli->set_charset("utf8");
      $this->mysqli->query("SET NAMES 'utf8'");

      return 'conectado';
    }
  }

  /**
   * DATOS DE LAS CONEXIONES
   *
   * @return boolean
   */
  protected function conexiones() {

    $validar_conexion = false;

    $this->local();
    if ($this->conectar() == 'conectado') {
      array_push($this->resultado_conexion, $this->conectar() . ' Local');
      $validar_conexion = true;
      return true;
    } else {
      array_push($this->resultado_conexion, $this->conectar() . ' Local');
    }


    $this->externo();
    if ($this->conectar() == 'conectado') {
      array_push($this->resultado_conexion, $this->conectar() . ' externo');
      $validar_conexion = true;
      return true;
    } else {
      array_push($this->resultado_conexion, $this->conectar() . ' externo');
    }


    if (!$validar_conexion) {
      #exit('<br> <strong> servidores desconectados </strong> <br>');
    }

    return false;
  }


/**
 * Conectar Empresas
 * este es el metodo que permite conectar multiples empresas
 * 
 * @param string $bdd variable de al base de datos a conetar
 * @return boolean
 */
  public function conectar_empresa($server, $user, $password, $bdd) {    
   
    $validar_conexion = false;
    
    $this->empresas($server, $user, $password, $bdd);

    if ($this->conectar() == 'conectado') {
      array_push($this->resultado_conexion, $this->conectar() . ' ' . $bdd);
      $validar_conexion = true;
      
      return true;
      
    } else {
      array_push($this->resultado_conexion, $this->conectar() . ' ' . $bdd);
    }
    if (!$validar_conexion) {
      #exit('<br> <strong> servidores desconectados </strong> <br>');
    }

    return false;
  }
  


}
