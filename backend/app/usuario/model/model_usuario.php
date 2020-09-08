<?php

namespace app\usuario\model;

#require_once('../../../../run.php');

use app\config\conexion;

/* LIBRERIAS CONFIGURACION PERSONAL */
use librerias\clases\sistema;


use Exception;

class usuarios extends conexion {


    public function verificar($usuario, $clave){

        $sql = "SELECT * FROM proyecto.usuarios WHERE identificacion = ?  and clave = ?";			

        $params = array("$usuario", "$clave");
		
		$rows = $this->query_secure($sql,  $params, true, true);		
		
		return json_encode($rows);

        $this->disconnect();

	}
	

    public function login_procedure($usuario, $clave){

		$sql = "SELECT proyecto.login ( ?, ? ) as registros";

        $params = array("$usuario", "$clave");
		
		$rows = $this->query_secure($sql,  $params, true, true);

        $result = array("total" => $this->rowcount(), "registros"=>$rows, "instancia"=>"login");       

        $objeto = json_decode($rows[0]['registros']);       

        $datos =  $objeto->datos[0];
        $menu =  isset($objeto->menu) ? $objeto->menu : null;

        if(!isset($datos->msg) and !isset($datos->estado)){

        $signer = new Sha256();

        $token = (new Builder())
        ->setIssuer('http://zavweb.com')
        ->setId(session_id(), true)
        ->setIssuedAt(time())
        ->setNotBefore(time() + 60)
        ->setExpiration(time() + 3600)
        ->set('session_id', session_id() )
        ->set('datos', $datos)
        ->set('menu', $menu)            
        ->set('caduce',  date('Y-m-d h:i:s A', (time() + 3600) ) )
        ->sign($signer, 'WeBZaV2016')
        ->getToken();

        $this->token = $token;

        $retornar = array('token'=>"$token");

        $_SESSION['datos'] = $datos;
        $_SESSION['creador'] = 'marlon zayro';
        
        sistema::cabecera_json();

        sistema::cabeceras(202);   

        }else{        

        sistema::cabeceras(401);    

        $retornar = $datos;

        }   		
		
		return json_encode($retornar);

        $this->disconnect();

	}

	    public function login($usuario, $clave){

		$sql = "SELECT * FROM proyecto.usuarios WHERE identificacion = ?  and clave = ?";

        $params = array("$usuario", "$clave");
		
		$DataRows = $this->query_secure($sql,  $params, true, true);                

        if($this->rowcount() > 0){

		$sql = "SELECT
            m.nombre AS menu,
            submenu_1.nombre AS submenu1,
            submenu_1.modulo AS modulo1,
            submenu_2.nombre AS submenu2,
            submenu_2.modulo AS modulo2
        FROM
            proyecto.privilegio as p
        INNER JOIN proyecto.grupo as g ON p.id_grupo = g.id
        INNER JOIN proyecto.menu as m ON p.id_menu = m.id
        INNER JOIN proyecto.usuarios AS u ON u.id_grupo = g.id
        LEFT JOIN proyecto.submenu_1 ON submenu_1.id_menu = m.id
        LEFT JOIN proyecto.submenu_2 ON submenu_2.id_submenu_1 = submenu_1.id
        WHERE
            u.identificacion = ?            
            order by submenu_1.nombre asc";

        $params = array("$usuario");
		
		$rows = $this->query_secure($sql,  $params, true, true);

        $retornar = array("menu"=>$rows,  "datos"=>$DataRows, "instancia"=>"login", "estado"=>"success"); 

        $menu = $rows;      

  

        $_SESSION['datos'] = $retornar;
        $_SESSION['creador'] = 'marlon zayro';
        
        sistema::cabeceras(202); 
		sistema::cabecera_json();

          

        }else{        

        sistema::cabeceras(401);    

        return $retornar;

        }   		
		
		return json_encode($retornar);

        $this->disconnect();

	}

	public function buscar($id){

		$sql = "SELECT * FROM proyecto.usuarios where id = ?";	

        $params = array("$id");
		
		$rows = $this->query_secure($sql,  $params, true, true);		
		
		$result = array("total" => $this->rowcount(), "registros"=>$rows, "instancia"=>"buscar");		
		
		return json_encode($result);

        $this->disconnect();

	}
    
		
	public function consultar(){
		
		$sql = "SELECT * FROM proyecto.usuarios";		
		
		$rows = $this->query($sql);		
		
		$result = array("total" => $this->rowcount(), "registros"=>$rows, "instancia"=>"consultar");	

       return json_encode($result);

        $this->disconnect();
	}
		
	

        
	public function logout($id){

        $sql = "DELETE FROM proyecto.enlinea  WHERE  identificacion = ?";	

        $params = array("$id");
		
		$result = $this->query_secure($sql,  $params, false, true);

        if($result===false){

            $error =  array("error" => $db->getError());

            return json_encode($error);
        
        }else{

             $result = array("eliminados" => $this->rowcount());

             return json_encode($result);
        }

        $this->disconnect();

        session_destroy();

	}
	
}

/*
$instancia = new usuarios();

print ($instancia->login('1098669883', '123456'));
*/
