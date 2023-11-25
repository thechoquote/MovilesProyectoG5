<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");

session_start();
include "conexion.php";

$email = $_POST['email'];
$contrasena = $_POST['contrasena'];

$sql = "SELECT * FROM usuario WHERE email='".$email."' AND contrasena='".$contrasena."'";

$result = mysqli_query($conn, $sql);
$count = mysqli_num_rows($result);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo json_encode(array(
		'status' => 'Success', 
		'id_usuario' => $row['id_usuario'], 
		'nombre' => $row['nombre']));
} else {
    echo json_encode(array(
		'status' => 'Invalid', 
		'message' => 'Nombre de usuario o contraseña incorrectos'));
}

?>
