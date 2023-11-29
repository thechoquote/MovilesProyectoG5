import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trabajomovilesg5/config/config.dart';
import 'package:trabajomovilesg5/config/themes.dart';
import 'package:trabajomovilesg5/config/ServerResponse.dart';

import 'package:trabajomovilesg5/features/Home/presentation/Home_Page.dart';
import 'package:trabajomovilesg5/Login_Page.dart';

class PerfilPage extends StatefulWidget {
  final String userId;

  PerfilPage({Key? key, required this.userId}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  // Datos del estudiante (simulados)
  String nombre = '';
  String codigo = '';
  String correo = '';

  // Método para obtener los datos del usuario desde el servidor PHP
  Future<void> _fetchUserData() async {
    final response = await http.get(Uri.parse(
        '${config.baseUrl}/ListarDetallesUsuario.php?id_usuario=${widget.userId}'));
    if (response.statusCode == 200) {
      final userData = jsonDecode(response.body);
      setState(() {
        nombre = userData['nombre'];
        codigo = userData['codigo'];
        correo = userData['email'];
      });
    } else {
      // Manejo de errores
      print('Error al obtener los datos del usuario');
    }
  }

  @override
  void initState() {
    super.initState();
    // Llama al método para obtener los datos del usuario cuando se inicia la página
    _fetchUserData();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String userId = prefs.getString('userId') ?? '';
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Home(userId: userId),
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
                nombre,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Mostrar el correo institucional
              Text(
                correo,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              // Mostrar el código de estudiante
              Text(
                codigo,
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
