<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include "conexion.php";

$userData = array();
$user_id = 1; // Cambia esto al ID del usuario que necesites

$sql = "SELECT nombre, codigo, email FROM usuario WHERE id_usuario = $user_id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $userData = array(
        'nombre' => $row['nombre'],
        'codigo' => $row['codigo'],
        'email' => $row['email']
    );
}

$conn->close();

echo json_encode($userData);
?>
