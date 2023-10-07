import 'package:flutter/material.dart';
import 'package:trabajomovilesg5/config/firebase_services.dart';
import 'package:trabajomovilesg5/features/Home/presentation/HomePage.dart';

class agregarProyecto extends StatefulWidget {
  const agregarProyecto({super.key});
  @override
  State<agregarProyecto> createState() => _agregarProyecto();
}

class _agregarProyecto extends State<agregarProyecto> {

  TextEditingController nameController = TextEditingController(text:"");
  TextEditingController descriptionController = TextEditingController(text: "");
  TextEditingController courseController = TextEditingController(text: "");
  TextEditingController cycleController = TextEditingController(text: "");

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
                hintText: 'Ingrese nombre del proyecto'
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

            const SizedBox(height: 20), // Agrega espacio entre el último TextField y el botón

            ElevatedButton(
            onPressed: () async {
              await addProject(nameController.text,
                descriptionController.text,
                courseController.text,
                cycleController.text,);
            },
            child: const Text("Guardar"))
          ],
        )
      )
    );
  }

}
