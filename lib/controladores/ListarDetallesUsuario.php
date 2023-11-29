<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include "conexion.php";

$userData = array();

// Obtén el user_id de los parámetros de la solicitud
if (isset($_GET['id_usuario'])) {
    $user_id = $_GET['id_usuario'];
} else {
    // Manejo de errores: no se proporcionó id_usuario
    http_response_code(400);
    echo json_encode(array("message" => "No se proporcionó id_usuario."));
    exit();
}

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