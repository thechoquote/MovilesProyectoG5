import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:trabajomovilesg5/config/firebase_services.dart';
import 'package:http/http.dart' as http;
import 'package:trabajomovilesg5/config/config.dart';
import 'package:trabajomovilesg5/config/ServerResponse.dart';

import 'package:trabajomovilesg5/LoginPage.dart';
import 'package:trabajomovilesg5/features/Proyecto/presentation/Add_Project_Page.dart';
import 'package:trabajomovilesg5/features/Proyecto/presentation/Details_Project_Page.dart';
import 'package:trabajomovilesg5/features/Proyecto/domain/project_model.dart';
import 'package:trabajomovilesg5/features/Perfil/presentation/PerfilPage.dart';

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
        title: const Text('Página Principal'),
      ),
      drawer: DrawerMenu(),
      body: FutureBuilder(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AgregarProyecto(),
          ));
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menú',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Mis Proyectos'),
            onTap: () {
              // Acción al seleccionar la opción "Mis Proyectos"
            },
          ),
          ListTile(
            title: Text('Perfil'),
            onTap: () {
              // Navegar a la página de perfil al tocar "Perfil"
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PerfilPage(), // Usa la página de perfil
              ));
            },
          ),
          ListTile(
            title: Text('Cerrar sesión'),
            onTap: () {
              // Implementa la lógica para cerrar sesión aquí
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Login(), // Navega de regreso a la página de inicio de sesión
              ));
            },
          ),
        ],
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
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                Expanded(
                  flex: 2,
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
                      SizedBox(height: 10),
                      Text(
                        project.description,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10), // Espacio entre la imagen y el botón
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón "Detalles"
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => DetallesProyecto()
                )
                );
              },
              child: Text('Detalles'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
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
