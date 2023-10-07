import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  // Datos del estudiante (simulados)
  final String nombreEstudiante = 'César Urquizo Espinoza';
  final String codigoEstudiante = '19200048';
  final String correoEstudiante = 'cesar.urquizo@unmsm.edu.pe';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Mostrar la foto de perfil
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/foto_de_perfil.jpg'), // Reemplaza con la ubicación de tu imagen de perfil
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
              correoEstudiante,
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            // Mostrar el código de estudiante
            Text(
              'Código: $codigoEstudiante',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}