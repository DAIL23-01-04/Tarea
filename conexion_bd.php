<?php

$host - "localhost";
$User - "root";
$pass - "";

$db - "eva01";

$conexion - mysqli_connect ($host, $User, $pass, $db);

if (!$con) {
    echo "Conexion Fallida";
}