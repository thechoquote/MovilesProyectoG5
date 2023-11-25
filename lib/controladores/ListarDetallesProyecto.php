<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include "conexion.php";

function obtenerMiembrosProyecto($conn, $project_id) {
    $membersQuery = "SELECT usuario.nombre FROM usuario INNER JOIN miembrosproyecto ON usuario.id_usuario = miembrosproyecto.id_usuario WHERE miembrosproyecto.id_proyecto = $project_id";
    $membersResult = $conn->query($membersQuery);

    $members = array();
    if ($membersResult->num_rows > 0) {
        while ($member = $membersResult->fetch_assoc()) {
            $members[] = $member['nombre'];
        }
    }
    return $members;}

function obtenerEntregablesProyecto($conn, $project_id) {
    $deliverablesQuery = "SELECT NombreEntregable FROM entregables WHERE id_proyecto = $project_id";
    $deliverablesResult = $conn->query($deliverablesQuery);

    $deliverables = array();
    if ($deliverablesResult->num_rows > 0) {
        while ($deliverable = $deliverablesResult->fetch_assoc()) {
            $deliverables[] = $deliverable['NombreEntregable'];
        }
    }
    return $deliverables;
}

function obtenerVersionesProyecto($conn, $project_id) {
    $versionsQuery = "SELECT NombreVersion FROM versiones WHERE id_proyecto = $project_id";
    $versionsResult = $conn->query($versionsQuery);

    $versions = array();
    if ($versionsResult->num_rows > 0) {
        while ($version = $versionsResult->fetch_assoc()) {
            $versions[] = $version['NombreVersion'];
        }
    }
    return $versions;
}

function obtenerAnotacionesProyecto($conn, $project_id) {
    $annotationsQuery = "SELECT anotaciones.ContenidoAnotacion FROM anotaciones INNER JOIN recursos ON anotaciones.id_elemento = recursos.id_recursos WHERE recursos.id_proyecto = $project_id";
    $annotationsResult = $conn->query($annotationsQuery);

    $annotations = array();
    if ($annotationsResult->num_rows > 0) {
        while ($annotation = $annotationsResult->fetch_assoc()) {
            $annotations[] = $annotation['ContenidoAnotacion'];
        }
    }
    return $annotations;
}

function obtenerEnlacesProyecto($conn, $project_id) {
    $linksQuery = "SELECT NombreEnlace FROM enlaces WHERE id_proyecto = $project_id";
    $linksResult = $conn->query($linksQuery);

    $links = array();
    if ($linksResult->num_rows > 0) {
        while ($link = $linksResult->fetch_assoc()) {
            $links[] = $link['NombreEnlace'];
        }
    }
    return $links;
}

function obtenerFuentesProyecto($conn, $project_id) {
    $sourcesQuery = "SELECT NombreFuente FROM fuentes WHERE id_proyecto = $project_id";
    $sourcesResult = $conn->query($sourcesQuery);

    $sources = array();
    if ($sourcesResult->num_rows > 0) {
        while ($source = $sourcesResult->fetch_assoc()) {
            $sources[] = $source['NombreFuente'];
        }
    }
    return $sources;
}

$project_id = 1; // Cambia esto al ID del proyecto que necesites
$projectData = array();

$sql = "SELECT * FROM proyecto WHERE id_proyecto = $project_id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $project = $result->fetch_assoc();
    $projectData['titulo'] = $project['titulo'];
    $projectData['descripcion'] = $project['descripcion'];

    $projectData['miembros'] = obtenerMiembrosProyecto($conn, $project_id);
    $projectData['entregables'] = obtenerEntregablesProyecto($conn, $project_id);
    $projectData['versiones'] = obtenerVersionesProyecto($conn, $project_id);
    $projectData['anotaciones'] = obtenerAnotacionesProyecto($conn, $project_id);
    $projectData['enlaces'] = obtenerEnlacesProyecto($conn, $project_id);
    $projectData['fuentes'] = obtenerFuentesProyecto($conn, $project_id);

    // ... Puedes seguir agregando más datos del proyecto si es necesario ...
}

$conn->close();

echo json_encode($projectData);
?>
