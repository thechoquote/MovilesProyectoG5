import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:trabajomovilesg5/config/firebase_options.dart';
import 'package:trabajomovilesg5/Splash.dart';
import 'package:trabajomovilesg5/LoginPage.dart';
import 'package:trabajomovilesg5/ErrorPage.dart';
import 'package:trabajomovilesg5/features/Home/presentation/HomePage.dart';
import 'package:trabajomovilesg5/features/Proyecto/presentation/Details_Project_Page.dart';
import 'package:trabajomovilesg5/features/Proyecto/presentation/Add_Project_Page.dart';
import 'package:trabajomovilesg5/prueba.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),//Scene es para probar cada vista de prueba
        '/login': (context) => Login(),
        '/home': (context) => Home(),
        '/proyect': (context) => DetallesProyecto(),
        '/addProyect': (context) => AgregarProyecto()
      },
      onGenerateRoute: (settings){
        return MaterialPageRoute(
            builder: (context) => const ErrorPage(),
        );
      },
    );
  }
}


