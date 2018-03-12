<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'id4898307_admin');
define('DB_PASSWORD', 'HardPassword');
define('DB_NAME', 'id4898307_workforce');

$mysqli = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Check connection

if($mysqli === false){

    die("ERROR: Could not connect. " . $mysqli->connect_error);

}
?>