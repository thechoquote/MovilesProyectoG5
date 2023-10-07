import 'package:flutter/material.dart';
import 'package:trabajomovilesg5/features/Home/presentation/Home.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RegExp emailRegex =
  RegExp(r'^[a-zA-Z]+\.[a-zA-Z]+@unmsm\.edu\.pe$'); // Expresión regular para validar el email

  bool isEmailValid(String email) {
    return emailRegex.hasMatch(email);
  }

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
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email:',
                      fillColor: Colors.grey,
                      filled: true,
                    ),
                    validator: (email) {
                      if (email != null) {
                        if (!isEmailValid(email)) {
                          return 'Email no válido. Debe ingresar con un correo institucional de UNMSM';
                        }
                      } else {
                        return 'Por favor, ingrese un correo electrónico';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: passwordController,
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
              onPressed: () {
                final email = emailController.text;
                if (isEmailValid(email)) {
                  // Realizar la autenticación y navegar a la página principal (Home)
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
                } else {
                  // Mostrar un mensaje de error si el email no es válido
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: Text(
                            'Email no válido. Debe ingresar con un correo institucional de UNMSM'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Aceptar'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Entrar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}