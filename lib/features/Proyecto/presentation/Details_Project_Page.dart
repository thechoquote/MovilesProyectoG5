import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:trabajomovilesg5/config/config.dart';
import 'package:trabajomovilesg5/config/themes.dart';
import 'package:trabajomovilesg5/config/ServerResponse.dart';

import 'package:trabajomovilesg5/features/Home/presentation/Home_Page.dart';
import 'package:trabajomovilesg5/features/Proyecto/presentation/Details_Document.dart';
import 'package:trabajomovilesg5/features/Perfil/presentation/PerfilPage.dart';

class DetallesProyecto extends StatefulWidget {
  @override
  _DetallesProyectoState createState() => _DetallesProyectoState();
}

class _DetallesProyectoState extends State<DetallesProyecto> {
  // Variables para almacenar los detalles del proyecto
  String titulo = '';
  String descripcion = '';
  List<String> miembros = [];
  List<String> entregables = [];
  List<String> versiones = [];
  List<String> anotaciones = [];
  List<String> enlaces = [];
  List<String> fuentes = [];

  @override
  void initState() {
    super.initState();
    // Llamar a la función para obtener los detalles del proyecto al inicio
    obtenerDetallesProyecto();
  }

  //parte lógica
  Future<void> obtenerDetallesProyecto() async {
    final url = Uri.parse("${config.baseUrl}/ListarDetallesProyecto.php");
    final response = await http.get(url);

    if (response.statusCode == ResponseDB.successCode) {
      final proyecto = json.decode(response.body);

      setState(() {
        titulo = proyecto['titulo'];
        descripcion = proyecto['descripcion'];
        miembros = List<String>.from(proyecto['miembros']);
        entregables = List<String>.from(proyecto['entregables']);
        versiones = List<String>.from(proyecto['versiones']);
        anotaciones = List<String>.from(proyecto['anotaciones']);
        enlaces = List<String>.from(proyecto['enlaces']);
        fuentes = List<String>.from(proyecto['fuentes']);
      });
    } else {
      throw Exception('Error al cargar los detalles del proyecto');
    }
  }

  //parte gráfica
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              titulo,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              descripcion,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            ExpansionTile(
              title: Text("Miembros del Proyecto"),
              children: miembros
                  .map((miembro) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(miembro),
                        ],
                      ))
                  .toList(),
            ),
            ExpansionTile(
              title: Text("Documentos"),
              children: [
                // Aquí puedes mostrar información sobre los documentos del proyecto
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          DetallesDocumento(), // Redirige a la página DetailsDocument.dart
                    ));
                  },
                  child: Text("Ver Documentos"),
                ),
                // Agrega más información si es necesario
              ],
            ),
            ExpansionTile(
              title: Text("Enlaces"),
              children: enlaces
                  .map((enlace) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(enlace),
                        ],
                      ))
                  .toList(),
            ),
            ExpansionTile(
              title: Text("Fuentes"),
              children: fuentes
                  .map((fuente) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(fuente),
                        ],
                      ))
                  .toList(),
            ),
            ExpansionTile(
              title: Text("Entregables"),
              children: entregables
                  .map((entregable) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(entregable),
                        ],
                      ))
                  .toList(),
            ),
            ExpansionTile(
              title: Text("Versiones"),
              children: versiones
                  .map((version) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(version),
                        ],
                      ))
                  .toList(),
            ),
            ExpansionTile(
              title: Text("Anotaciones"),
              children: anotaciones
                  .map((anotacion) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(anotacion),
                        ],
                      ))
                  .toList(),
            ),
          ],
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
