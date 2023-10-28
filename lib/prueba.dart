import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> login(String username, String password) async {
  final response = await http.post(
    Uri.parse('http://tu-servidor.com/tu-api.php'), // Reemplaza con la URL de tu API PHP
    body: {'username': username, 'password': password},
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    if (data['status'] == 'success') {
      // Proceso de inicio de sesión exitoso
      // Puedes guardar información del usuario en el almacenamiento local
    } else {
      // Proceso de inicio de sesión fallido, muestra un mensaje de error
    }
  } else {
    // Error de conexión
  }
}
