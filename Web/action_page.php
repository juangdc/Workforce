<?php
$mysqli = new mysqli("localhost", "*********", "*********", "***********");

if (mysqli_connect_errno()) {
    exit();
}

/* sentencia preparada */
if ($sentencia = $mysqli->prepare("SELECT Usuario.correo, Usuario.contraseña FROM Usuario WHERE correo='".$_GET['uname'] ."' AND contraseña='".$_GET['psw']."';")) {
    $sentencia->execute();

    /* vincular variables a la sentencia preparada */
    $sentencia->bind_result($correo, $contraseña);

    /* obtener valores */
    $sentencia->fetch();
    $sentencia->close();
   if ( $correo==$_GET['uname']  ) {
      // echo "Inicio de sesión correcto";
        header('Location: webWorkforce.html');
        $mysqli->close();
        exit;
    }else{
        header('Location: /');
    }
    /* cerrar la sentencia */
}
/* cerrar la conexión */
$mysqli->close();

?>
