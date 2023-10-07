import 'package:flutter/material.dart';
import 'package:trabajomovilesg5/features/Login/presentation/pages/Splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'config/firebase_options.dart';

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
      title: 'Flutter Demo',

      home:  MyAppSplash(),
    );
  }
}


