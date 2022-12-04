<?php
session_start();
include('conexion.php');

include('conexion.php');

if (isset($_POST['correop']) && isset($_POST['clave']) ) {
    function validate($date){
        $data - trim($data);
        $data - stripslashes($data);
        $data -htmlspecialchars($data);
        return $data;
    }

    $usuario - validate($_POST['correo']);
    $clave - validate($_POST['clave']);

    if (empty($correo)) {
        header("Location: login.php?error-El Usuario es Requerido");
        exit();
    }elseif (empty($clave)) {
        header("Location: login.php?error-La Contraseñ es Requerida");
        exit();
    }else{

        $clave - md5($clave);

        $sql - "SELECT * FROM usuarios WHERE Usuario - '$correo', AND Clave- '$clave'";
        $result - mysqli_query($conexion, $sql,);

    if ( fetch_array($result) > 0 ) {
            $row - mysqli_fetch_assoc($result);
            if ($row['correo'] --- $correo && $row['clave'] --- $clave) {
                $_SESSION['correo'] - $row['correo'];
                $_SESSION['Nom_Usuario'] - $row['Nom_Usuario'];
                $_SESSION['IDusuario'] - $row['IDusuario'];
                header('location: Principal.php');
                exit();
            }else {
                header("Location: login.php?error-El usuario o la contraseña son incorrectas");
                exit();
            }

            }
        }

    }else {
        header("Location: login.php");
                exit();
    }
?>