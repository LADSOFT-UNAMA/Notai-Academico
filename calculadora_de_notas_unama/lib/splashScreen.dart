import 'dart:async';
import 'package:calculadora_de_notas_unama/pages/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Usando addPostFrameCallback para garantir que temos um contexto com Navigator
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => HomePage()),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: telaCarregamento());
  }
}

Widget telaCarregamento() {
  return Container(
    width: double.infinity,
    color: const Color(0xff639976),
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Notai',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 50)),
        SizedBox(height: 0),
        Text('Academica',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30)),
        SizedBox(height: 0),
        Image(image: AssetImage('image/Logo2.png')),
        SizedBox(height: 30),
        CircularProgressIndicator(
          color: Colors.white,
        ),
      ],
    ),
  );
}
