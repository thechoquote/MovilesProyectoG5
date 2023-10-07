import 'package:flutter/material.dart';
import 'package:trabajomovilesg5/features/Proyecto/presentation/proyecto.dart';
import 'package:trabajomovilesg5/features/Proyecto/domain/project_model.dart';
import 'package:trabajomovilesg5/features/Perfil/presentation/perfil.dart';
import 'package:trabajomovilesg5/features/Login/presentation/pages/Login.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Principal'),
      ),
      drawer: DrawerMenu(),
      body: ProjectList(),
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

class ProjectList extends StatelessWidget {
  final List<Project> projects = [
    Project('Proyecto 1', 'Descripción del proyecto 1', 'assets/unmsm_logo.jpg'),
    Project('Proyecto 2', 'Descripción del proyecto 2', 'assets/unmsm_logo.jpg'),
    Project('Proyecto 3', 'Descripción del proyecto 3', 'assets/unmsm_logo.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return MyCard(projects[index]);
      },
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
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    project.imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
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
            SizedBox(height: 10), // Espacio entre la imagen y el botón
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón "Detalles"
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => proyecto(project),
                )
                );
              },
              child: Text('Detalles'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
