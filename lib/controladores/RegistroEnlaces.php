<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include "conexion.php";

$nombreEnlace = $_POST['nombreEnlace'];
$URLEnlace = $_POST['URLEnlace'];
$DescripcionEnlace = $_POST['DescripcionEnlace'];
//$id_proyecto = $_POST['id_proyecto'];

//$sql = "INSERT INTO enlaces (nombreEnlace, URLEnlace, DescripcionEnlace, id_proyecto) VALUES (?, ?, ?, ?)";
$sql = "INSERT INTO enlaces (nombreEnlace, URLEnlace, DescripcionEnlace) VALUES (?, ?, ?)";
$stmt = $conn->prepare($sql);
//$stmt->bind_param("sssi", $nombreEnlace, $URLEnlace, $DescripcionEnlace, $id_proyecto);
$stmt->bind_param("sss", $nombreEnlace, $URLEnlace, $DescripcionEnlace);


if ($stmt->execute()) {
    echo json_encode(["message" => "El enlace se ha guardado correctamente."]);
} else {
    echo json_encode(["message" => "Hubo un error al guardar el enlace."]);
}

$conn->close();
?>