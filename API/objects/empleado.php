<?php
class Empleado{
 
    // database connection and table name
    private $conn;
    private $table_name = "empleado";
 
    // object properties
    public $DNI;
    public $nombre;
    public $apellido1;
    public $apellido2;
    public $salario;
    public $km;
    public $id_solicitud;
    public $id_categoria;
 
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
// read products
function read(){
 
    // select all query
    $query = "SELECT * FROM " . $this->table_name . "" ;
 
    // prepare query statement
    $stmt = $this->conn->prepare($query);
 
    // execute query
    $stmt->execute();
 
    return $stmt;
}

// used when filling up the update product form
function readOne(){
 
    // query to read single record
    $query ="SELECT * FROM " . $this->table_name . " WHERE DNI = ?";
 
    // prepare query statement
    $stmt = $this->conn->prepare( $query );
 
    // bind id of product to be updated
    $stmt->bindParam(1, $this->DNI);
 
    // execute query
    $stmt->execute();
 
    // get retrieved row
    $row = $stmt->fetch(PDO::FETCH_ASSOC);
 
    // set values to object properties
    $this->nombre = $row['nombre'];
    $this->salario = $row['salario'];
    $this->apellido1 = $row['apellido1'];
    $this->apellido2 = $row['apellido2'];
    $this->km = $row['km'];
    $this->id_solicitud = $row['id_solicitud'];
    $this->id_categoria = $row['id_categoria'];
    
}
}

