import 'package:calculadora_de_notas_unama/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

//=======================================
// debugMode:
// refere-se à adaptação da tela em
// diversos cenários
const bool debugMode = true; // Mude para false em produção

void main() {
  runApp(
    debugMode
        ? DevicePreview(
            builder: (context) => const MyApp(),
          )
        : const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      builder: DevicePreview.appBuilder, // Adiciona suporte ao DevicePreview
      // Adicione outras configurações do MaterialApp aqui, como tema ou localizações
    );
  }
}
