<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

session_start();
include "conexion.php";

// Obtén el id_usuario de la URL
$id_usuario = $_GET['id_usuario'];

// Consulta para obtener proyectos por usuario
$sql = "SELECT titulo, descripcion, ciclo, id_proyecto FROM proyecto WHERE id_usuario = $id_usuario";
$result = $conn->query($sql);

$projects = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $projects[] = $row;
    }
}

$conn->close();

echo json_encode($projects);

?>