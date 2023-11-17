import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:trabajomovilesg5/config/themes.dart';
import 'package:trabajomovilesg5/config/config.dart';
import 'package:trabajomovilesg5/config/ServerResponse.dart';
import 'package:trabajomovilesg5/features/Home/presentation/Home_Page.dart';


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
    var url = Uri.parse('${config.baseUrl}/RegistroProyecto.php'); // Reemplaza con tu URL PHP
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
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Ingrese nombre del proyecto',
              ),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                hintText: 'Descripción',
              ),
            ),
            TextField(
              controller: courseController,
              decoration: const InputDecoration(
                hintText: 'Curso',
              ),
            ),
            TextField(
              controller: cycleController,
              decoration: const InputDecoration(
                hintText: 'Ciclo',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                await addProject(
                  nameController.text,
                  descriptionController.text,
                  courseController.text,
                  cycleController.text,
                );
              },
              child: const Text("Guardar"),
            )
          ],
        ),
      ),
    );
  }
}
