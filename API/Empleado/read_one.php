<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
 
// include database and object files
include_once '../config/database.php';
include_once '../objects/empleado.php';
 
// get database connection
$database = new Database();
$db = $database->getConnection();
 
// prepare product object
$empleado = new Empleado($db);
 
// set ID property of product to be edited
$empleado->DNI = isset($_GET['DNI']) ? $_GET['DNI'] : die();
 
// read the details of product to be edited
$empleado->readOne();
 
// create array
$empleados_arr = array(
    "DNI" =>  $empleado->DNI,
    "nombre" => $empleado->nombre,
    "apellido1" => $empleado->apellido1,
    "apellido2" => $empleado->apellido2,
    "salario" => $empleado->salario,
    "km" => $empleado->km,
    "id_solicitud" => $empleado->id_solicitud,
    "id_categoria" => $empleado->id_categoria
 
);
 
// make it json format
print_r(json_encode($empleados_arr));
?>