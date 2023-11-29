import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:trabajomovilesg5/config/themes.dart';
import 'package:trabajomovilesg5/config/config.dart';
import 'package:trabajomovilesg5/config/ServerResponse.dart';
import 'package:trabajomovilesg5/features/Home/presentation/Home_Page.dart';

class AgregarProyecto extends StatefulWidget {
  final String userId;

  const AgregarProyecto({Key? key, required this.userId}) : super(key: key);

  @override
  _AgregarProyectoState createState() => _AgregarProyectoState();
}

class _AgregarProyectoState extends State<AgregarProyecto> {
  TextEditingController nameController = TextEditingController(text: "");
  TextEditingController descriptionController = TextEditingController(text: "");
  TextEditingController courseController = TextEditingController(text: "");
  TextEditingController cycleController = TextEditingController(text: "");

  //parte lógica
  Future<void> addProject(
    String name,
    String description,
    String course,
    String cycle,
  ) async {
    var url = Uri.parse(
        '${config.baseUrl}/RegistroProyecto.php'); // Reemplaza con tu URL PHP
    var response = await http.post(
      url,
      body: {
        'titulo': name,
        'descripcion': description,
        'curso': course,
        'ciclo': cycle,
        'id_usuario': widget.userId,
      },
    );

    if (response.statusCode == ResponseDB.successCode) {
      // Si la solicitud es exitosa (código 200), muestra la respuesta del servidor
      print('Respuesta del servidor: ${response.body}');
    } else {
      print('Error en la solicitud: ${response.statusCode}');
      // Puedes mostrar un mensaje de error al usuario aquí
    }
  }

  //parte gráfica
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Proyecto'),
        backgroundColor: color2,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 240,
              color: Colors.white,
              child: Image.asset('assets/formulario1.jpg'),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Nombre del proyecto',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, introduce un nombre de proyecto';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(
                hintText: 'Descripción',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, introduce una descripción';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: courseController,
              decoration: InputDecoration(
                hintText: 'Curso',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, introduce un curso';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: cycleController,
              decoration: const InputDecoration(
                  hintText: 'Ciclo', border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              validator: (value) {
                int numberValue = int.tryParse(value ?? '') ?? 0;
                if (numberValue < 1 || numberValue > 10) {
                  return 'Por favor, introduce un valor entre 1 y 10';
                }
                return null;
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: color2, // Cambia el color del botón
              ),
              child: const Text('Guardar'),
              onPressed: () async {
                await addProject(
                  nameController.text,
                  descriptionController.text,
                  courseController.text,
                  cycleController.text,
                );
                // Muestra un diálogo
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Éxito'),
                      content: const Text('Proyecto agregado exitosamente'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () async {
                            try {
                              await addProject(
                                nameController.text,
                                descriptionController.text,
                                courseController.text,
                                cycleController.text,
                              );
                              // Resto del código...
                            } catch (e) {
                              print('Error al agregar el proyecto: $e');
                            }
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
