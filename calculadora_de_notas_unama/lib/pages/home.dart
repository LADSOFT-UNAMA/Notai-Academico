import 'package:calculadora_de_notas_unama/components/banner.dart';
import 'package:calculadora_de_notas_unama/components/bannerAdd.dart';
import 'package:calculadora_de_notas_unama/components/button.dart';
import 'package:calculadora_de_notas_unama/components/entradaDeTexto.dart';
import 'package:calculadora_de_notas_unama/components/topbar.dart';
import 'package:calculadora_de_notas_unama/navigation/navigation.dart';
import 'package:calculadora_de_notas_unama/pages/result.dart';
import 'package:calculadora_de_notas_unama/pages/sobre.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controllerNota1 = TextEditingController();
  final TextEditingController controllerNota2 = TextEditingController();
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // =======================================
            //      Component Banner
            topBar(largura),
            // =======================================
            //      Main content
            Column(
              children: [
                const SizedBox(height: 90),
                Expanded(
                  child: Container(
                    width: largura,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          // =======================================
                          //      Banner Widget
                          bannerWidget(largura, const AssetImage('image/bannerImage1.png')),
                          const SizedBox(height: 10),
                          // =======================================
                          //      Input for Nota 1
                          buildInputField('Nota 1', controllerNota1),
                          const SizedBox(height: 10),
                          // =======================================
                          //      Banner Add Widget
                          bannerWidgetAdd(largura),
                          // =======================================
                          //      Input for Nota 2
                          buildInputField('Nota 2', controllerNota2),
                          // =======================================
                          //      Error message
                          if (isError) const Text(
                            "Verifique se todos os campos estão preenchidos.",
                            style: TextStyle(color: Colors.red),
                          ),
                          const SizedBox(height: 10),
                          // =======================================
                          //      Calculate Button
                          button(
                            text: 'Calcular',
                            onTap: () => calculateNotas(),
                          ),
                          const SizedBox(height: 10),
                          // =======================================
                          //      About Button
                          button(
                            text: 'Sobre o App',
                            onTap: () {
                              navigateToPageWithReverseSlideAnimation(context, const SobrePage());
                            },
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Função para construir o campo de entrada
  Widget buildInputField(String label, TextEditingController controller) {
    return inputSection(
      MediaQuery.of(context).size.width,
      label,
      controller: controller,
      onChanged: (value) {
        if (validate(value)) {
          isError = false;
          setState(() {
            controller.text = value;
          });
        }
      },
    );
  }

  // Função para calcular as notas
  void calculateNotas() {
    if (controllerNota1.text.isNotEmpty && controllerNota2.text.isNotEmpty) {
      isError = false;
      navigateToPageWithReverseSlideAnimation(
        context,
        ResultPage(
          nota1: controllerNota1.text,
          nota2: controllerNota2.text,
        ),
      );
    } else {
      setState(() {
        isError = true;
      });
    }
  }
}

// Regex para validação de campo
bool validate(String input) {
  const String numberRegex = r'^\d+(\.\d+)?$'; // Permite números inteiros e decimais
  return RegExp(numberRegex).hasMatch(input);
}
