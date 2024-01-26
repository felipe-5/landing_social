<?php

$conexion = new mysqli("localhost", "root", "", "prueba_tecnica_social");

if ($conexion->connect_error) {
    echo json_encode(array('error'=>"Error de conexión a la base de datos: " . $conexion->connect_error));
    die;
}

$sql = "SELECT * FROM pais ORDER BY pais";
$result= $conexion->query($sql);
$resultados = array();

while ($row = $result->fetch_assoc()) {
    $resultados[] = $row;
}

$conexion->close();
echo json_encode($resultados);

