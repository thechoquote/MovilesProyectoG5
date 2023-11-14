import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

import 'package:trabajomovilesg5/config/ServerResponse.dart';
import 'package:trabajomovilesg5/config/config.dart';
import 'package:trabajomovilesg5/features/Home/presentation/HomePage.dart';

const Color color1 = Color(0xFF22092C);
const Color color2 = Color(0xFF872341);
const Color color3 = Color(0xFFBE3144);
const Color color4 = Color(0xFFF05941);

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

    //alertDialog para mensajes emergentes
    void showErrorDialog(BuildContext context, String message) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('¡Alerta Estudiante!'),
            content: Text(message),
            actions: <Widget>[
              TextButton(
                child: Text('Regresar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

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
      showErrorDialog(context, "Por favor, ingrese su contraseña");
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
          MaterialPageRoute(builder: (context) => Home()),
        );
      } else {
        showErrorDialog(context,
            "La cuenta no se encuentra registrada o ha ingresado mal sus datos");
      }
    } else {
      showErrorDialog(context, "Error en el servidor");
    }
  }

  //Colores de la parte grafica
  Color color1 = Color(0xFF22092C);
  Color color2 = Color(0xFF872341);
  Color color3 = Color(0xFFBE3144);
  Color color4 = Color(0xFFF05941);

  //parte gráfica
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRRect(
        // Agrega esta línea
        borderRadius: BorderRadius.circular(10.0), // Agrega esta línea
        child: Container(
          color: color4,
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'assets/unmsmlogo.png',
                      height: 300,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'SPI - FISI',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: 300,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: user,
                            decoration: InputDecoration(
                              hintText: 'Usuario',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              fillColor: color2,
                              filled: true,
                              contentPadding: EdgeInsets.all(15.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            cursorColor: Colors.black,
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: pass,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Contraseña',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              fillColor: color2,
                              filled: true,
                              contentPadding: EdgeInsets.all(15.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            cursorColor: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(color2),
                    ),
                    onPressed: () {
                      // Cambia el color del botón cuando se presiona
                      setState(() {
                        color2 = color3;
                      });
                      _login();
                    },
                    child: Text('Iniciar sesión'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
