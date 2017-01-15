<?php

require_once 'testing.php';

class AdictosTutorialTest extends PHPUnit_Framework_TestCase {
 
    public function testReturnGreeting() {
        $adictos = new AdictosTutorial();
        $this->assertEquals("Hola Adictos Al Trabajo !!!", $adictos->texto());
        $this->assertEquals('gato!!!', $adictos->texto());
    }
}
