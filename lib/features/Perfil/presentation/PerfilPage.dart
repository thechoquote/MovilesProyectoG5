import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trabajomovilesg5/config/config.dart';
import 'package:trabajomovilesg5/config/ServerResponse.dart';

import 'package:trabajomovilesg5/features/Home/presentation/HomePage.dart';
import 'package:trabajomovilesg5/LoginPage.dart';

const Color color1 = Color(0xFF22092C);
const Color color2 = Color(0xFF872341);
const Color color3 = Color(0xFFBE3144);
const Color color4 = Color(0xFFF05941);

class PerfilPage extends StatelessWidget {
  // Datos del estudiante (simulados)
  final String nombreEstudiante = 'César Urquizo Espinoza';
  final String codigoEstudiante = '19200048';
  final String correoEstudiante = 'cesar.urquizo@unmsm.edu.pe';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Perfil'),
          backgroundColor: color2, // Cambia el color del AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Mostrar la foto de perfil
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                    'assets/foto_de_perfil.jpg'), // Reemplaza con la ubicación de tu imagen de perfil
              ),
              SizedBox(height: 20),
              // Mostrar el nombre del estudiante
              Text(
                nombreEstudiante,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Mostrar el correo institucional
              Text(
                'Correo: $correoEstudiante',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              // Mostrar el código de estudiante
              Text(
                'Código: $codigoEstudiante',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              // Añadir un botón para cerrar la sesión
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: color2, // Cambia el color del botón
                ),
                child: Text('Cerrar sesión'),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
