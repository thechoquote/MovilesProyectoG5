import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';

class CargarPdf extends StatefulWidget {
  const CargarPdf({Key? key}) : super(key: key);

  @override
  _CargarPdf createState() => _CargarPdf();
}

class _CargarPdf extends State<CargarPdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cargar Documentos'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowedExtensions: ['pdf'],
            );
            if (result != null) {
              File file = File(result.files.single.path!);
              String fileName = result.files.single.name;
              uploadFile(file, fileName);
            } else {
              // User canceled the picker
            }
          },
          child: Text('Seleccionar PDF'),
        ),
      ),
    );
  }

  Future<void> uploadFile(File file, String fileName) async {
    firebase_storage.Reference reference = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('documents')
        .child(fileName);
    firebase_storage.UploadTask uploadTask = reference.putFile(file);

    try {
      await uploadTask;
      String downloadURL = await reference.getDownloadURL();

      // Guardar referencia del archivo en Firestore
      await FirebaseFirestore.instance.collection('documents').add({
        'name': fileName,
        'url': downloadURL,
      });

      // Show a success dialog or navigate back
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Éxito'),
            content: Text('Documento cargado exitosamente.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } catch (e) {
      // Handle errors
      print(e.toString());
    }
  }
}