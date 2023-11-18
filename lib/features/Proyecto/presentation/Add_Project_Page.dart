import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:trabajomovilesg5/config/themes.dart';
import 'package:trabajomovilesg5/config/config.dart';
import 'package:trabajomovilesg5/config/ServerResponse.dart';
import 'package:trabajomovilesg5/features/Home/presentation/Home_Page.dart';

// Define your TextEditingController
final nameController = TextEditingController();
final descriptionController = TextEditingController();
final courseController = TextEditingController();
final cycleController = TextEditingController();

// Define a variable to hold the error message
String? nameErrorText;
String? descriptionErrorText;
String? courseErrorText;
String? cycleErrorText;

// Define a variable to hold the selected cycle
int? selectedCycle;

final scaffoldKey = GlobalKey<ScaffoldState>();

class AgregarProyecto extends StatefulWidget {
  const AgregarProyecto({Key? key}) : super(key: key);

  @override
  State<AgregarProyecto> createState() => _AgregarProyectoState();
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
        backgroundColor: color2, // Cambia el color del AppBar
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Nombre del proyecto', // Añade una etiqueta
                border: OutlineInputBorder(), // Hace que sea un recuadro
                errorText: nameErrorText, // Show the error message
              ),
            ),
            SizedBox(height: 10), // Agrega espacio
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                hintText: 'Descripción', // Añade una etiqueta
                border: OutlineInputBorder(), // Hace que sea un recuadro
                errorText: descriptionErrorText, // Show the error message
              ),
              maxLines: 5,
            ),
            SizedBox(height: 10), // Agrega espacio
            TextField(
              controller: courseController,
              decoration: InputDecoration(
                hintText: 'Curso',
                border: OutlineInputBorder(),
                errorText: courseErrorText, // Show the error message
              ),
            ),
            SizedBox(height: 10), // Agrega espacio
            DropdownButtonFormField<int>(
              decoration: InputDecoration(
                hintText: 'Ciclo',
                border: OutlineInputBorder(),
                errorText: cycleErrorText,
              ),
              items: List.generate(10, (index) {
                return DropdownMenuItem<int>(
                  value: index + 1,
                  child: Text((index + 1).toString()),
                );
              }),
              onChanged: (value) {
                setState(() {
                  selectedCycle = value;
                  cycleErrorText = null;
                });
              },
              value: selectedCycle,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: color2, // Cambia el color del botón
              ),
              child: Text('Guardar'),
              onPressed: () async {
                if (nameController.text.isEmpty ||
                    descriptionController.text.isEmpty ||
                    courseController.text.isEmpty ||
                    cycleController.text.isEmpty) {
                  // If any text is empty, show an error message
                  setState(() {
                    if (nameController.text.isEmpty) {
                      nameErrorText =
                          'Por favor, introduce un nombre de proyecto';
                    }
                    if (descriptionController.text.isEmpty) {
                      descriptionErrorText =
                          'Por favor, introduce una descripción';
                    }
                    if (courseController.text.isEmpty) {
                      courseErrorText = 'Por favor, introduce un curso';
                    }
                  });
                } else {
                  // If all texts are not empty, clear the error messages and continue with form submission
                  setState(() {
                    nameErrorText = null;
                    descriptionErrorText = null;
                    courseErrorText = null;
                  });
                  await addProject(
                    nameController.text,
                    descriptionController.text,
                    courseController.text,
                    cycleController.text,
                  );
                  final snackBar = SnackBar(
                    content: Text('Guardado exitosamente!'),
                    duration: Duration(seconds: 2),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
