<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
 
// include database and object files
include_once '../config/database.php';
include_once '../objects/empleado.php';
 
// instantiate database and empleado object
$database = new Database();
$db = $database->getConnection();
 
// initialize object
$empleado = new Empleado($db);
 
// query products
$stmt = $empleado->read();
$num = $stmt->rowCount();
 
// check if more than 0 record found
if($num>0){
 
    // products array
    $empleados_arr=array();
    $empleados_arr["records"]=array();
 
    // retrieve our table contents
    // fetch() is faster than fetchAll()
    // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);
 
        $empleados_item=array(
           "DNI" =>  $DNI,
    "nombre" => $nombre,
    "apellido1" => $apellido1,
    "apellido2" => $apellido2,
    "salario" => $salario,
    "km" => $km,
    "id_solicitud" => $id_solicitud,
    "id_categoria" => $id_categoria
    
        );
 
        array_push($empleados_arr["records"], $empleados_item);
    }
 
    echo json_encode($empleados_arr);
}
 
else{
    echo json_encode(
        array("message" => "No empleados found.")
    );
}
?>