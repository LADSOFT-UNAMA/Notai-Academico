import 'package:flutter/material.dart';

Widget button(text) {
  return // =====================================
      //      Buttom
      InkWell(
    onTap: () {
      print('ola mundo');
    },
    child: Container(
      height: 70,
      width: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2), // Cor da sombra
          spreadRadius: 2, // Espalha a sombra para todas as direções
          blurRadius: 3, // Suaviza a borda da sombra
          offset: Offset(0, 3), // Deslocamento da sombra
        ),
      ], color: Color(0xffD9D9D9), borderRadius: BorderRadius.circular(10)),
      child: Text(text),
    ),
  );
  // =====================================
}
