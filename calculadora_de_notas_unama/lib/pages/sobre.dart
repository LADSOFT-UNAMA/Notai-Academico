import 'package:calculadora_de_notas_unama/components/banner.dart';
import 'package:calculadora_de_notas_unama/components/topbar.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class SobrePage extends StatefulWidget {
  const SobrePage({super.key});

  @override
  State<SobrePage> createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  TextEditingController controllerNota1 = TextEditingController();
  TextEditingController controllerNota2 = TextEditingController();
  bool isError = false;

  // void abrirUrl(url) async {
  //   if (await canLaunchUrl(Uri.parse(url))) {
  //     await launchUrl(Uri.parse(url));
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // =======================================
            //      component Banner
            topBar(largura),
            // =======================================
            Column(
              children: [
                SizedBox(height: 90),
                Expanded(
                  child: Container(
                    width: largura,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          // =======================================
                          //      component Banner
                          bannerWidget(largura, AssetImage('image/bannerImage2.png')),
                          // =======================================
                          const SizedBox(height: 10),
                          // =======================================
                          Text(
                            "Sobre o Projeto",
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                          ),
                          Center(
                            child: Container(
                              width: 300,
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Text(
                                    "A Calculadora de Notas Acadêmicas UNAMA é uma ferramenta digital em desenvolvimento para facilitar o acompanhamento do desempenho e a gestão das notas. Esta plataforma visa oferecer uma solução integrada e intuitiva que permite calcular automaticamente as notas com base nos critérios de avaliação estabelecidos.",
                                  ),
                                  Text(
                                    "\nEquipe de Desenvolvimento",
                                    style: TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                  Text(eqDesenvolvimento),
                                  Text(
                                    "\nEquipe de Design",
                                    style: TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                  Text(eqDesign),
                                  Text(
                                    "\nEquipe de Documentação",
                                    style: TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                  Text(eqDocumentacao),
                                  Text(
                                    "\nOrientador",
                                    style: TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                  Text("@Erminio Augusto Ramos da Paixão"),
                                  SizedBox(height: 30),
                                  Text(txt),
                                ],
                              ),
                            ),
                          ),
                          // =======================================
                          //  Margem
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
}

// Regex para validação de campo
bool validate(String input) {
  const emailRegex = "^[0-9.]*\$";
  return RegExp(emailRegex).hasMatch(input);
}

final String txt = """
Acesse o código do projeto em:
github.com/ladsoftunama/App-Calculadora-de-Notas-Academicas-Unama

Acesse as políticas de privacidade em:
github.com/ladsoftunama/App-Calculadora-de-Notas-Academicas-Unama/blob/main/privacy%20policy.md
""";

final String eqDesenvolvimento = """
@Marco Antonio
@Rellan Monteiro
@Matheus Barbosa
@Igor Alexsandro
@Felipe Moura
@Henrique Jeremias
@Mateus Nunes
@Thiago Tomé
@José Ribeiro
@Yuri Afonso Costa
""";

final String eqDesign = """
@Marco Antonio
@Iago Dantas
@Pablo Henrique
@João Emmanuel
@Jackeline Pereira
""";

final String eqDocumentacao = """
@Marco Antonio
@Diosne Marlon
@Caique Costa
@Carlos Victor
@Maria Rodrigues
""";
