import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:trabajomovilesg5/config/firebase_services.dart';
import 'package:http/http.dart' as http;

import 'package:trabajomovilesg5/config/config.dart';
import 'package:trabajomovilesg5/config/themes.dart';
import 'package:trabajomovilesg5/config/ServerResponse.dart';

import 'package:trabajomovilesg5/Login_Page.dart';
import 'package:trabajomovilesg5/features/Proyecto/presentation/Add_Project_Page.dart';
import 'package:trabajomovilesg5/features/Proyecto/presentation/Details_Project_Page.dart';
import 'package:trabajomovilesg5/features/Proyecto/domain/project_model.dart';
import 'package:trabajomovilesg5/features/Perfil/presentation/PerfilPage.dart';

/*const Color color1 = Color(0xFF22092C);
const Color color2 = Color(0xFF872341);
const Color color3 = Color(0xFFBE3144);
const Color color4 = Color(0xFFF05941);*/

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<List<Map<String, dynamic>>> getProjects() async {
    final url = Uri.parse("${config.baseUrl}/listarProyectos.php");
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
        title: const Text(
          'SPI - FISI',
          style: TextStyle(color: Colors.white),
        ),
        leading: Container(),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add,
                color: Colors.white), // Cambia el color del icono a negro
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AgregarProyecto()),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: color2,
        child: FutureBuilder(
          future: getProjects(),
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
            color: Colors.transparent, // Quita el fondo
            elevation: 0.0, // Quita el sombreado
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
                      onPressed: () {
                        // No hace nada
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

      /*floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AgregarProyecto(),
          ));
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),*/
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






/*
class ProjectList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getProjects(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final projectsData = snapshot.data as List<Map<String, dynamic>>;

          return ListView.builder(
            itemCount: projectsData.length,
            itemBuilder: (context, index) {
              final project = Project(
                  projectsData[index]['Nombre'], // Usa el campo 'Nombre' del resultado
                  projectsData[index]['Descripcion'] // Supongo que hay un campo 'Descripción' en tus datos
              );

              return MyCard(project);
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
*/
