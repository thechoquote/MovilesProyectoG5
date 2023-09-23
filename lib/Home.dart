import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Principal'),
      ),
      drawer: Drawer(
        // Menú lateral
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
                // Acción al seleccionar la opción 1
              },
            ),
            ListTile(
              title: Text('Perfil'),
              onTap: () {
                // Acción al seleccionar la opción 1
              },
            ),
            ListTile(
              title: Text('Cerrar sesion'),
              onTap: () {
                // Acción al seleccionar la opción 2
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          // Fondo con celdas, cajas o rectángulos
          Container(
            color: Colors.grey[200],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyCard('Proyecto 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Habitasse dolor etiam sed ante donec quis sapien. Malesuada rhoncus nullam eleifend lorem egestas mauris massa massa. Más.','assets/unmsm_logo.jpg'),
                  MyCard('Proyecto 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Habitasse dolor etiam sed ante donec quis sapien. Malesuada rhoncus nullam eleifend lorem egestas mauris massa massa. Más.','assets/unmsm_logo.jpg'),
                  MyCard('Proyecto 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Habitasse dolor etiam sed ante donec quis sapien. Malesuada rhoncus nullam eleifend lorem egestas mauris massa massa. Más.','assets/unmsm_logo.jpg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class MyCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath; // Agregamos una propiedad para la imagen

  MyCard(this.title, this.description, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            // Parte izquierda con la imagen
            Expanded(
              flex: 1, // Ajusta la relación de ancho de la parte izquierda y derecha
              child: Image.asset(
                imagePath,
                width: 100, // Ajusta el ancho de la imagen según sea necesario
                height: 100, // Ajusta la altura de la imagen según sea necesario
                fit: BoxFit.cover, // Ajusta el tamaño y el recorte de la imagen
              ),
            ),
            SizedBox(width: 20), // Espacio entre la imagen y el texto
            // Parte derecha dividida en superior e inferior
            Expanded(
              flex: 2, // Ajusta la relación de ancho de la parte izquierda y derecha
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Parte superior para el título
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10), // Espacio entre el título y la descripción
                  // Parte inferior para la descripción
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
