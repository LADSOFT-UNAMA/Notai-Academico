import 'package:flutter/material.dart';

// ==========================
//  coddign mathias
// ==========================

class Resultado extends StatelessWidget {
  String nota1 = "";
  String nota2 = "";
  Resultado({super.key, this.nota1 = '', this.nota2 = ''});
  bool isNotAprovado = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //================================
      //    component texto "Resultado"
      //================================
      Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            'Resultado',
            style: TextStyle(fontSize: 25),
          )),
      //=================================
      //    component area de resultado
      //=================================
      Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: 300,
          height: 300,
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
                color: Colors.black,
                width: 0.5,
              )),
          child: Reswidget(
              isNotAprovado: isNotAprovado, nota1: nota1, nota2: nota2))
    ]);
  }
}

Widget Reswidget({isNotAprovado, nota1, nota2}) {
  // calculo para saber se passou
  // nota1 + nota2 / 2
  // se maior ou igual a 7
  // então aprovado
  // se não fica de av3
  double notaFinal = double.parse(nota1) + double.parse(nota2);
  if (notaFinal / 2 >= 7) {
    isNotAprovado = false;
  } else {
    isNotAprovado = true;
  }
  return Column(
    children: [
      // ============================================================
      isNotAprovado
          ? Column(children: [
              const Text("Sera necessario fazer av3",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
              const SizedBox(height: 5),
              Text(
                  "( $nota1 + $nota2 ) - 10 = ${((notaFinal / 2) - 10) * -1} "),
              const SizedBox(height: 20),
              Text("Voce precisa de no minimo ${((notaFinal / 2) - 10) * -1} ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              const Text("Unama belém - pa",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              const Text("Como calculamos a nota ?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
              const SizedBox(height: 5),
              const Text(" (nota1 + nota2 /2) - 10 = nota necessaria"),
              const SizedBox(height: 10),
              const Text(
                  'Mais informações sobre o calculo:\nhttps://blogs.unama.br/tags/como-saber-nota\nInformações publicadas em 2017.')
            ])
          : Column(
              children: [
                const Text("Parabens !!",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
                Text("nota 1 = $nota1 && nota 2 = $nota2"),
                Text("voce ja foi aprovado com a media de ${notaFinal / 2}"),
                const SizedBox(height: 10),
                const Text(
                    'Mais informações sobre o calculo:\nhttps://blogs.unama.br/tags/como-saber-nota\nInformações publicadas em 2017.')
              ],
            )

      // ===========================================================
    ],
  );
}
