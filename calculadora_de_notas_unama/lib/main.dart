import 'package:calculadora_de_notas_unama/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

//=======================================
// debugMode:
// refere-se a adaptação da tela em
// diversos cenarios
final debugMode = false;

void main() {
  runApp(
    debugMode
        ? DevicePreview(
            builder: (_) => const MyWidget(),
          )
        : MyWidget(),
  );
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
