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
                    bannerWidget(largura, AssetImage('image/bannerImage2.png')),
                    // =======================================
                    //      component margin
                    const SizedBox(height: 10),
                    // =======================================
                    //      component entrada de texto

                    // =======================================
                    //        Margem
                    const SizedBox(height: 10),
                    // =======================================
                    Text(
                      "Sobre o projeto",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                    ),
                    Center(
                      child: Container(
                          // color: Colors.green,
                          width: 300,
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              Text(
                                  "A Calculadora de Notas Acadêmicas UNAMA é um projeto de ferramenta digital em desenvolvimento para facilitar o acompanhamento do desempenho dos membros e a gestão das notas. Esta plataforma visa oferecer uma solução integrada e intuitiva que permite calcular automaticamente as notas com base nos critérios de avaliação estabelecidos."),
                              Text(
                                "\nEquipe de desenvolvimento",
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              Text(eqdesenvolvimento),
                              Text(
                                "\nEquipe de design",
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              Text(eqdesign),
                              Text(
                                "\nEquipe de documentação",
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              Text(eqdocumentacao),
                              Text(
                                "\nOrientador",
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              Text("@Erminio Augusto Ramos da Paixao"),
                              SizedBox(height: 30),
                              Text(txt)
                            ],
                          )),
                    ),
                    // =======================================
                    //      component button sobre o app
                    // button(
                    //     text: 'Acessar pagina do projeto',
                    //     onTap: () {
                    //       //
                    //       abrirUrl(
                    //           'https://github.com/ladsoftunama/App-Calculadora-de-Notas-Academicas-Unama');
                    //     }),
                    // =======================================
                    //  margem
                    SizedBox(height: 10),
                    // =======================================
                    //      component button sobre o app
                    // button(
                    //     text: 'privacy policy',
                    //     onTap: () {
                    //       //
                    //       abrirUrl(
                    //           "https://github.com/ladsoftunama/App-Calculadora-de-Notas-Academicas-Unama/blob/main/privacy%20policy.md");
                    //     }),
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

final txt = """
\n
acesse o codigo do projeto em :
github.com/ladsoftunama/App-Calculadora-de-Notas-Academicas-Unama

acesse as politicas de privacidade em :
github.com/ladsoftunama/App-Calculadora-de-Notas-Academicas-Unama/blob/main/privacy%20policy.md
""";

final eqdesenvolvimento = """
@Marco antonio
@Rellan Monteiro
@Matheus Barbosa
@Igor Alexsandro
@Felipe Moura
@Henrique Jeremias
@Mateus Nunes
@Thiago Tomé
@José ribeiro
@Yuri Afonso Costa
""";

final eqdesign = """
@Marco antonio
@Iago Dantas
@Pablo Henrique
@João Emannueln
@Jackeline Pereira
""";

final eqdocumentacao = """
@Marco antonio
@Diosne Marlon
@Caique Costa
@Carlos Victor
@Maria Rodrigue
""";
