import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:trabajomovilesg5/config/config.dart';
import 'package:trabajomovilesg5/config/themes.dart';
import 'package:trabajomovilesg5/config/ServerResponse.dart';

import 'package:trabajomovilesg5/features/Home/presentation/Home_Page.dart';
import 'package:trabajomovilesg5/features/Proyecto/presentation/Details_Document.dart';
import 'package:trabajomovilesg5/features/Perfil/presentation/PerfilPage.dart';
import 'package:trabajomovilesg5/features/Documento/presentation/List_Pdf_Page.dart';

class DetallesProyecto extends StatefulWidget {
  final String idProyecto;

  DetallesProyecto({required this.idProyecto});

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
    final url = Uri.parse(
        "${config.baseUrl}/ListarDetallesProyecto.php?id_proyecto=${widget.idProyecto}");
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

  Map<String, String> instrucciones = {
    'Miembros del Proyecto':
        'Aquí agrega a los que participaron en tu proyecto',
    'Plantillas':
        'Aquí adjunta los documentos de los cuales has basado tu trabajo',
    'Enlaces': 'Aqui adjunta todo enlace que hayas utilizado',
    'Fuentes': 'Aqui adjunta toda fuente cientifica que hayas utilizado',
    'Entregables': 'Aqui adjunta los entregables de tu profesor',
    'Versiones': 'Aqui adjunta todos las versiones de tus documentos',
    'Anotaciones': 'Aqui puedes adjuntar notas que tengas del curso',
  };

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

            //Miembros de proyecto
            Text(
              "Miembros del Proyecto",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ...miembros.map((miembro) => Text(miembro)).toList(),
            SizedBox(height: 20),

            //Plantillas
            ExpansionTile(
              title: Text("Plantillas"),
              children: [
                // Aquí puedes mostrar información sobre los documentos del proyecto
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          ListPDF(), // Redirige a la página DetailsDocument.dart
                    ));
                  },
                  child: Text("Ver Documentos"),
                ),
                // Agrega más información si es necesario
              ],
            ),

            // Enlaces
            Text(
              "Enlaces",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ...enlaces
                .map((enlace) => InkWell(
                      child: Text(
                        enlace,
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () async {
                        try {
                          Uri.parse(enlace);
                          bool launched = await canLaunch(enlace);

                          if (launched) {
                            await launch(enlace);
                          } else {
                            throw 'Could not launch $enlace';
                          }
                        } catch (e) {
                          // Handle the error
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text('Failed to launch URL: $enlace')),
                          );
                        }
                      },
                    ))
                .toList(),
            SizedBox(height: 20),

            // Fuentes
            Text(
              "Fuentes",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ...fuentes.map((fuente) => Text(fuente)).toList(),
            SizedBox(height: 20),

            // Entregables
            Text(
              "Entregables",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ...entregables.map((entregable) => Text(entregable)).toList(),
            SizedBox(height: 20),

            // Versiones
            Text(
              "Versiones",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ...versiones.map((version) => Text(version)).toList(),
            SizedBox(height: 20),

            // Anotaciones
            Text(
              "Anotaciones",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ...anotaciones.map((anotacion) => Text(anotacion)).toList(),
            SizedBox(height: 20),
            // Agrega esto al final de tu widget Column
            // Agrega esto al final de tu widget Column
            Center(
              child: TextButton(
                child: Text('Agregar'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: color1,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      String dropdownValue = 'Miembros del Proyecto';
                      String textFieldValue = '';
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return AlertDialog(
                            title: Text('Agregar Elemento'),
                            content: Column(
                              children: <Widget>[
                                DropdownButton<String>(
                                  value: dropdownValue,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue ?? dropdownValue;
                                    });
                                  },
                                  items: <String>[
                                    'Miembros del Proyecto',
                                    'Plantillas',
                                    'Enlaces',
                                    'Fuentes',
                                    'Entregables',
                                    'Versiones',
                                    'Anotaciones'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                                Text(instrucciones[dropdownValue] ?? ''),
                                if (dropdownValue == 'Miembros del Proyecto' ||
                                    dropdownValue == 'Enlaces' ||
                                    dropdownValue == 'Anotaciones')
                                  TextField(
                                    onChanged: (value) {
                                      textFieldValue = value;
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Ingrese texto aquí',
                                    ),
                                  ),
                                if (dropdownValue == 'Fuentes' ||
                                    dropdownValue == 'Versiones' ||
                                    dropdownValue == 'Anotaciones')
                                  TextButton(
                                    child: Text('Subir Archivo'),
                                    style: TextButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.blue,
                                    ),
                                    onPressed: () {
                                      // Código para subir archivo
                                    },
                                  ),
                              ],
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: Text('Cancelar'),
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              ElevatedButton(
                                child: Text('Aceptar'),
                                onPressed: () {
                                  // Código para agregar el elemento
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
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
                      icon: Icon(Icons.person, color: color2),
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        String userId = prefs.getString('userId') ?? '';
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => PerfilPage(userId: userId),
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
