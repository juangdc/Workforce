<html>
<body>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
 <?php

	/*private $host = "localhost";
    private $dbname = "id4835931_workforce";
    private $username = "id4835931_admin";
    private $password = "HardPassword";*/
    

// Create connection
$conn = new mysqli("localhost", "id4835931_admin", "HardPassword", "id4835931_workforce");

$sql = 'SELECT * FROM `Usuario` WHERE correo=$_POST["uname"] && contraseña=$_POST["psw"]';//query sql donde uname y psw son los parametros que hemos pasado
$result = $conn->query($sql);

if ($result->num_rows > 0) {
('Location: webWorkforce.html');//redirigimos a la bbdd del workforce
}else{
	echo "Usuario desconocido";//en otro caso es porque no existe el usuario
}
?> 

</body>
</html> 