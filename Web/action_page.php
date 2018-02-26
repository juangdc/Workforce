<html>
<body>

 <?php
$servername = http://es.000webhost.com/;
$username = uname;
$password = psw;


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = SELECT * FROM `Usuario` WHERE correo=uname && contraseña=psw;
$result = $conn->query($sql);

if ($result->num_rows > 0) {
header (header('Location: webWorkforce.html');)
}else{
	echo "Usuario desconocido";
}
?> 

</body>
</html> 