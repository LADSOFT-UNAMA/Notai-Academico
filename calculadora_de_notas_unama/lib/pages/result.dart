import 'package:calculadora_de_notas_unama/components/butomResult.dart';
import 'package:calculadora_de_notas_unama/components/resultado.dart';
import 'package:calculadora_de_notas_unama/components/topbar.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultPage extends StatefulWidget {
  String nota1 = "";
  String nota2 = "";
  ResultPage({super.key, this.nota1 = '', this.nota2 = ''});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  _ResultPageState();
  late String buttonText = "Copia resultado";
  late Color buttonColor = Colors.blue;

  void shareResult() {
    String temp = resposta(nota1: widget.nota1, nota2: widget.nota2);
    FlutterClipboard.copy(temp).then((value) {
      setState(() {
        buttonText = "Texto Copiado";
        buttonColor = Color(0xFF639976);
      });
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          buttonText = "Copia resultado";
          buttonColor = Colors.blue;
        });
      });
    });
  }

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
        Column(
          children: [
            // =======================================
            //      component margin
            const SizedBox(height: 90),
            // =======================================
            Expanded(
              child: SizedBox(
                width: largura,
                child: SingleChildScrollView(
                  child: Column(children: [
                    Resultado(
                      nota1: widget.nota1,
                      nota2: widget.nota2,
                    ),
                    // =======================================
                    //      component margin
                    const SizedBox(height: 0),
                    // =======================================
                    buttontyper(
                        text: "Calcular outra nota",
                        onTap: () {
                          // ao clicar volta uma pagina
                          Navigator.of(context).pop();
                        }),

                    const SizedBox(height: 10),
                    buttontyper(
                        onTap: shareResult,
                        text: buttonText,
                        color: buttonColor),
                    const SizedBox(height: 50),
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

String resposta({nota1, nota2}) {
  bool isNotAprovado = false;
  double notaFinal = double.parse(nota1) + double.parse(nota2);
  if (notaFinal / 2 >= 7) {
    isNotAprovado = false;
  } else {
    isNotAprovado = true;
  }
  String res1 = """
Sera necessario fazer av3
( $nota1 + $nota2 ) - 10 = ${((notaFinal / 2) - 10) * -1} 

Voce precisa de no minimo ${((notaFinal / 2) - 10) * -1} 

Unama belém - pa
Como calculamos a nota ?

(nota1 + nota2 /2) - 10 = nota necessaria

Mais informações sobre o calculo:
https://blogs.unama.br/tags/como-saber-nota

Informações publicadas em 2017.
""";
  String res2 = """
Parabens !!

nota 1 = $nota1 && nota 2 = $nota2

voce ja foi aprovado com a media de ${notaFinal / 2}

Unama belém - pa
Como calculamos a nota ?

(nota1 + nota2 /2) = nota

criterio:
nota maior ou igual a 7

Mais informações sobre o calculo:
https://blogs.unama.br/tags/como-saber-nota

Informações publicadas em 2017.
""";
  return isNotAprovado ? res1 : res2;
}
