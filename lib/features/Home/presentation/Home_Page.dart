import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:trabajomovilesg5/config/config.dart';
import 'package:trabajomovilesg5/config/themes.dart';
import 'package:trabajomovilesg5/config/ServerResponse.dart';

import 'package:trabajomovilesg5/Login_Page.dart';
import 'package:trabajomovilesg5/features/Proyecto/presentation/Add_Project_Page.dart';
import 'package:trabajomovilesg5/features/Proyecto/presentation/Details_Project_Page.dart';
import 'package:trabajomovilesg5/features/Proyecto/domain/project_model.dart';
import 'package:trabajomovilesg5/features/Perfil/presentation/PerfilPage.dart';

class Home extends StatefulWidget {
  final String userId;

  Home({required this.userId});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List<Map<String, dynamic>>> fetchProjects() async {
    final url = Uri.parse(
        "${config.baseUrl}/listarProyectos.php?id_usuario=${widget.userId}");
    final response = await http.get(url);

    if (response.statusCode == ResponseDB.successCode) {
      final responseMap = json.decode(response.body);
      final projectsList = responseMap as List<dynamic>;

      return projectsList.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed to load projects');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color4,
        title: Row(
          children: [
            SizedBox(width: 16), // Espacio ajustable a la izquierda del título
            Text('SPI - FISI'), // Título
          ],
        ),
        automaticallyImplyLeading: false, // Oculta el botón "atrás"
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AgregarProyecto()),
              );
            },
          ),
          SizedBox(width: 16), // Espacio ajustable a la derecha del botón
        ],
      ),
      body: Container(
        color: color2,
        child: FutureBuilder(
          future: fetchProjects(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }

              final projectsData = snapshot.data as List<Map<String, dynamic>>;

              return ListView.builder(
                itemCount: projectsData.length,
                itemBuilder: (context, index) {
                  final project = Project(
                    projectsData[index]['titulo'],
                    projectsData[index]['descripcion'],
                  );

                  return MyCard(project);
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          height: 50.0,
          child: BottomAppBar(
            color: Colors.transparent,
            elevation: 0.0, //
            shape: CircularNotchedRectangle(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.home,
                          color: color2), // Cambia el color del icono
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        String userId = prefs.getString('userId') ?? '';
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => Home(userId: userId),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.person,
                          color: color2), // Cambia el color del icono
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => PerfilPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Project project;

  MyCard(this.project);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            // Primera fila: Nombre del proyecto y número de ciclo
            Row(
              children: <Widget>[
                // Columna izquierda: Nombre del proyecto
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        project.title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                // Columna derecha: Número de ciclo
                Text(
                  'Ciclo 8', // Puedes cambiar el número del ciclo según sea necesario
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            // Segunda fila: Descripción del proyecto
            Row(
              children: <Widget>[
                Text(
                  project.description,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            // Tercera fila: Botón Detalles
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Acción al presionar el botón "Detalles"
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => DetallesProyecto()),
                    );
                  },
                  child: Text('Detalles'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color2,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
