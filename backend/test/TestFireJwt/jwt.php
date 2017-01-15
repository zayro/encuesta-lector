<?php

require '../../vendor/autoload.php';

use \Firebase\JWT\JWT;

$key = "ZAV2016?*";
$token = array(
    "id" => "1",
    "display" => "unodepiera",
    "nickname" => "unodepiera",
    "email" => "unodepiera",
    "iat" => time(),
    "nbf" => 1357000000
);

/**
 * IMPORTANT:
 * You must specify supported algorithms for your application. See
 * https://tools.ietf.org/html/draft-ietf-jose-json-web-algorithms-40
 * for a list of spec-compliant algorithms.
 */
$jwt = JWT::encode($token, $key);
$decoded = JWT::decode($jwt, $key, array('HS256'));

$token = array('token' => $jwt);
print json_encode($token);

#print_r($decoded);


