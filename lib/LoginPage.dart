import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

import 'package:trabajomovilesg5/config/ServerResponse.dart';
import 'package:trabajomovilesg5/config/config.dart';
import 'package:trabajomovilesg5/features/Home/presentation/HomePage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}


class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  //parte Logica
  Future<void> _login() async {
    final correo = user.text;
    final password = pass.text;

    //Correo vacio
    if (correo.isEmpty) {
      Fluttertoast.showToast(
        msg: "Por favor, ingrese su correo",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
      return;
    }

    //Contraseña vacia
    if (password.isEmpty) {
      Fluttertoast.showToast(
        msg: "Por favor, ingrese su contraseña",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
      return;
    }

    final url = Uri.parse("${config.baseUrl}/login.php");

    final response = await http.post(url, body: {
      "email": correo,
      "contrasena": password,
    });

    if (response.statusCode == ResponseDB.successCode) {
      final result = json.decode(response.body);
      if (result['status'] == ResponseDB.success) {
        final nombreUsuario = result['nombreUsuario'];
        final correoUsuario = result['correoUsuario'];
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Home()),
        );
      } else {
        Fluttertoast.showToast(
          msg:
          "La cuenta no se encuentra registrada o ha ingresado mal sus datos",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
        );
      }
    } else {
      Fluttertoast.showToast(
        msg: "Error en el servidor",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
  }

  //parte gráfica
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Usuarios UNMSM")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image.asset('assets/SPI-FISI_logo.jpg'),
            SizedBox(height: 20),

            Container(
              width: 300,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: user,
                    decoration: InputDecoration(
                      labelText: 'Email:',
                      fillColor: Colors.grey,
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 10),

                  TextFormField(
                    controller: pass,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password:',
                      fillColor: Colors.grey,
                      filled: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: _login,
              child: Text('Entrar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}