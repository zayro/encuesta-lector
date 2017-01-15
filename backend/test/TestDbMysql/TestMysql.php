<?php

require '../../vendor/autoload.php';

use Testify\Testify;
use librerias\db\procesos_bd;

$tf = new Testify("TESTEO DB MYSQL");

$objeto = new procesos_bd();
// Add a test case
$tf->test("conexion", function($tf) use($objeto) {

  $tf->assert($objeto->conectar_empresa('estructura_proyecto'), "Conexion base de datos");
  $tf->assertFalse(false);
  $tf->assertEquals(1, '1');
  $tf->assertSame(1, 1);
  $tf->assertNotInArray('g', array(1, 2, 3, 4, 5, 'a'));
  $tf->assertInArray('a', array(1, 2, 3, 4, 5, 'a'));
  $tf->pass("Always pass");
  $tf->fail();
});





$tf();
