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
  TextEditingController controllerNota1 = TextEditingController();
  TextEditingController controllerNota2 = TextEditingController();
  bool isError = false;
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        // =======================================
        //      component Banner
        topBar(largura),
        // =======================================
        //      component margem
        // =======================================
        Column(
          children: [
            SizedBox(
              height: 90,
            ),
            Expanded(
              child: Container(
                width: largura,
                child: SingleChildScrollView(
                  child: Column(children: [
                    // =======================================
                    //      component Banner
                    bannerWidget(largura, AssetImage('image/bannerImage1.png')),
                    // =======================================
                    //      component margin
                    const SizedBox(height: 10),
                    // =======================================
                    //      component entrada de texto
                    inputSection(largura, 'nota 1', controller: controllerNota1,
                        onChanged: (value) {
                      if (validate(value)) {
                        isError = false;
                        setState(() {
                          controllerNota1.text = value;
                        });
                      }
                    }),
                    // =======================================
                    //      component margin
                    const SizedBox(height: 10),
                    // =======================================
                    bannerWidgetAdd(largura),
                    // =======================================
                    //      component entrada de texto
                    inputSection(largura, 'nota 2', controller: controllerNota2,
                        onChanged: (value) {
                      if (validate(value)) {
                        isError = false;
                        setState(() {
                          controllerNota2.text = value;
                        });
                      }
                    }),

                    // =======================================
                    //      component aviso de campo vazio
                    isError
                        ? const Text(
                            "Verifique se todos os campos estão preenchidos",
                            style: TextStyle(color: Colors.red),
                          )
                        : Container(),
                    // =======================================
                    //      component margin
                    const SizedBox(height: 10),
                    // =======================================
                    //      component button calcular nota
                    button(
                        text: 'Calcular',
                        onTap: () {
                          if (controllerNota1.text.isNotEmpty &&
                              controllerNota2.text.isNotEmpty) {
                            isError = false;
                            navigateToPageWithReverseSlideAnimation(
                                context,
                                ResultPage(
                                  nota1: controllerNota1.text,
                                  nota2: controllerNota2.text,
                                ));
                          } else {
                            setState(() {
                              isError = true;
                            });
                          }
                        }),
                    // =======================================
                    //        Margem
                    const SizedBox(height: 10),
                    // =======================================
                    //      component button sobre o app
                    button(
                        text: 'sobre o app',
                        onTap: () {
                          navigateToPageWithReverseSlideAnimation(
                              context, SobrePage());

                          //
                        }),
                    // =======================================
                    //        Margem
                    const SizedBox(height: 40),
                    // =======================================
                  ]),
                ),
              ),
            )
          ],
        ),
      ],
    )));
  }
}

// rengex validação de campo
bool validate(String input) {
  const emailRegex = "^[0-9.]*\$";
  if (RegExp(emailRegex).hasMatch(input)) {
    return true;
  } else {
    return false;
  }
}
