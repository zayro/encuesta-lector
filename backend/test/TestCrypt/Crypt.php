<?php

$crypt = new Pop\Crypt\Crypt();
$crypt->setSalt($crypt->generateRandomString(32));
$hash  = $crypt->create('my-password');


echo $hash;

if ($crypt->verify('bad-password', $hash)) {} // Returns false
if ($crypt->verify('my-password', $hash))  {} // Returns true
