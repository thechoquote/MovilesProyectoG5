import 'package:flutter/material.dart';
import 'package:trabajomovilesg5/LoginPage.dart';
import 'package:trabajomovilesg5/main.dart';
import 'package:trabajomovilesg5/prueba.dart';

class Splash extends StatelessWidget
{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'SPI-FISI ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePageSplash(),
    );

  }
}

class MyHomePageSplash extends StatefulWidget
{
  @override
  State<StatefulWidget>createState()
  {
    return _MyHomePageState();
  }

}

class _MyHomePageState extends State<MyHomePageSplash>
{
  @override
  void initState()
  {
    super.initState();
    _navigatehome();
  }
  _navigatehome()async
  {
    await Future.delayed(Duration(milliseconds:2000),(){});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder:(context)=>Login()
        )
    );
  }

  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 320,
                  height: 320,
                  color: Colors.white,
                  child: Image.asset('assets/unmsm_logo.jpg'),
                )
              ],
            )
        )
    );
  }

}

/*class MyHomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    final titulo = 'validacion';
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text(titulo)),
        )
    );
  }
}*/