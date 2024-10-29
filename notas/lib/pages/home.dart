import 'package:flutter/material.dart';
import 'package:notas/components/banner.dart';
import 'package:notas/components/button.dart';
import 'package:notas/components/entradaTexto.dart';
import 'package:notas/components/topbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        // =======================================
        //      component topbar
        topBar(largura),
        // =======================================
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // =====================================
                //    margem
                const SizedBox(height: 10),
                // =====================================
                //    component banner
                banner(largura),
                // =====================================
                //    margem
                const SizedBox(height: 10),
                // =====================================
                //    component entrada de texto
                entradaDeTexto(largura, 'Nota 1'),
                // =====================================
                //    margem
                const SizedBox(height: 10),
                // =====================================
                //    component entrada de texto
                entradaDeTexto(largura, 'Nota 2'),
                // =====================================
                //    margem
                const SizedBox(height: 20),
                // =====================================
                //    component butão
                button('calcular nota'),
              ],
            ),
          ),
        ),
      ],
    )));
  }
}
