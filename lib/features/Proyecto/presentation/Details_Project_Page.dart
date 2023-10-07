import 'package:flutter/material.dart';
//import 'package:trabajomovilesg5/features/Proyecto/domain/project_model.dart';
import 'package:trabajomovilesg5/features/Home/presentation/HomePage.dart'; // Importa HomePage.dart

class proyecto extends StatelessWidget {
  //final Map<String, dynamic> projectData;

  //proyecto(this.projectData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Detalles del Proyecto'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back), // Icono de flecha hacia atrás
            onPressed: () {
              // Acción al presionar el botón "Regresar"
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Home(), // Redirige a Home.dart
                ),
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Proyecto 01",
              //projectData['Nombre'], // Usar el campo 'Nombre' del mapa
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Descripcion de Proyecto01",
              //projectData['Descripcion'], // Usar el campo 'Descripción' del mapa
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            ExpansionTile(
              title: Text("Miembros del Proyecto"),
              children: [
                // Aquí puedes mostrar información sobre los miembros del proyecto
                Text("Sebastian Nuñez Medina"),
                Text("César Urquizo Espinoza"),
                // Agrega más información si es necesario
              ],
            ),
            ExpansionTile(
              title: Text("Documentos"),
              children: [
                // Aquí puedes mostrar información sobre los documentos del proyecto
                Text("Informe 1"),
                Text("Informe 2"),
                Text("Informe Final"),
                // Agrega más información si es necesario
              ],
            ),
            ExpansionTile(
              title: Text("Enlaces"),
              children: [
                // Aquí puedes mostrar información sobre los enlaces del proyecto
                Text("Enlace 1"),
                Text("Enlace 2"),
                // Agrega más información si es necesario
              ],
            ),
            ExpansionTile(
              title: Text("Fuentes"),
              children: [
                // Aquí puedes mostrar información sobre las fuentes del proyecto
                Text("Fuente 1"),
                Text("Fuente 2"),
                // Agrega más información si es necesario
              ],
            ),
            ExpansionTile(
              title: Text("Entregables"),
              children: [
                // Aquí puedes mostrar información sobre los entregables del proyecto
                Text("Entregable 1"),
                Text("Entregable 2"),
                // Agrega más información si es necesario
              ],
            ),
            ExpansionTile(
              title: Text("Versiones"),
              children: [
                // Aquí puedes mostrar información sobre las versiones del proyecto
                Text("Versión 1"),
                Text("Versión 2"),
                // Agrega más información si es necesario
              ],
            ),
            ExpansionTile(
              title: Text("Otros"),
              children: [
                // Aquí puedes mostrar otra información relacionada con el proyecto
                Text("Otro detalle 1"),
                Text("Otro detalle 2"),
                // Agrega más información si es necesario
              ],
            ),
          ],
        ),
      ),

    );
  }
}
