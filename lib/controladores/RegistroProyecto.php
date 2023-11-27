<?php
session_start();

// 1. Establecer conexión con la base de datos
include "conexion.php";

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// 2. Verificar si la petición es POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // 3. Recoger los datos enviados a través de la petición POST
    $titulo = $_POST["titulo"];
    $descripcion = $_POST["descripcion"];
    $ciclo = $_POST["ciclo"];
    $curso = $_POST["curso"];
    
    // Obtén el id_usuario de la petición POST
    $id_usuario = $_POST['id_usuario'];

    // Establecer la fecha de creación a la fecha actual
    $fecha_creacion = date('Y-m-d');

    // 4. Preparar la declaración SQL para insertar datos en la tabla `proyecto`
    $stmt = $conn->prepare("INSERT INTO proyecto (titulo, descripcion, fecha_creacion, ciclo, curso, id_usuario) VALUES (?, ?, ?, ?, ?, ?)");

    // 5. Vincular los parámetros a la declaración SQL
    $stmt->bind_param("sssisi", $titulo, $descripcion, $fecha_creacion, $ciclo, $curso, $id_usuario);

    // 6. Ejecutar la declaración SQL
    if ($stmt->execute()) {
        echo "Registro exitoso";
    }
}
?>