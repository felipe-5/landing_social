<?php

$conexion = new mysqli("localhost", "root", "", "prueba_tecnica_social");

if ($conexion->connect_error) {
    echo json_encode(array('error'=>"Error de conexión a la base de datos: " . $conexion->connect_error));
    die;
} 

$nombreUsuario = $_POST['nombre_usuario'];
$correoUsuario = $_POST['correo_usuario'];
$telefonoUsuario = $_POST['telefono_usuario'];
$nombreTienda = $_POST['nombre_tienda'];
$paisTienda = $_POST['pais_tienda'];
$direccionTienda = $_POST['direccion_tienda'];

if (empty($nombreUsuario) || empty($correoUsuario) || empty($telefonoUsuario) || empty($nombreTienda) || empty($paisTienda) || empty($direccionTienda)) {
    echo json_encode(array('error'=>"Todos los campos son obligatorios. Por favor, completa el formulario."));
    die;
} 

$sql = "INSERT INTO formulario_tienda (usuario, correo, telefono, tienda, pais, direccion) VALUES (?, ?, ?, ?, ?, ?)";

$stmt = $conexion->prepare($sql);
$stmt->bind_param("ssssis", $nombreUsuario, $correoUsuario, $telefonoUsuario, $nombreTienda, $paisTienda, $direccionTienda);

if ($stmt->execute()) {
    echo json_encode(array('success'=>true));
} else {
    echo json_encode(array('error'=>"Error al guardar los datos: " . $stmt->error));
}

$stmt->close();
$conexion->close();
?>
