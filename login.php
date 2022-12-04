<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Eva 01</title>
</head>
<body>
    <form action="inicio.php" method="POST">
        <h1>COMENZAR SESION</h1>
        <hr>
        <?php
        if (isset($_GET['error'])) {
            ?>
            <p class="error">
                <?php
                echo $_GET['error']
                ?>

            </p>
        <?php    
        }
        ?>

        <hr>
        <i class="fa-solid fa-user"></i>
        <label>Usuario</label>
        <input type="text" name="Usuario" placeholder="Nombre de Usuario">

        <i class="fa-solid fa-unlock"></i>
        <label>Contraseña</label>
        <input type="password" name="Password" placeholder="Contraseña">
        <hr>
        <button type="submit">Iniciar Sesion</button>
        <a href="CrearCuenta.php">Crear Cuenta</a>
    </form>
</body>
</html>