import 'package:flutter/material.dart';
import 'package:trabajomovilesg5/Home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text("Login Usuarios UNMSM")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Agrega una imagen centrada
              Image.asset('assets/SPI-FISI_logo.jpg'), // Reemplaza 'your_image.png' con la ruta de tu imagen

              SizedBox(height: 20),

              // Centra los campos de entrada de texto
              Container(
                width: 300, // Ancho de los campos
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email:',
                        fillColor: Colors.grey, // Cambia el color del campo a gris
                        filled: true,
                      ),
                    ),
                    SizedBox(height: 10), // Espacio entre campos
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password:',
                        fillColor: Colors.grey, // Cambia el color del campo a gris
                        filled: true,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
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
      ),
    );
  }
}



