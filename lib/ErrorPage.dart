import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => ErrorPageState();

}

class ErrorPageState extends State<ErrorPage>{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 404'),
      ),
      body: const Center(
        child: Text('Error pagina no encontrada'),
      )
    );

  }

}