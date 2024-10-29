import 'package:flutter/material.dart';

// ==========================
//  coddign felipe
//  coddign Yuri
// ==========================

Widget buttontyper(
    {text = "", required onTap, Color color = const Color(0xFF639976)}) {
  return
      // =======================================
      //      Buttom
      // =======================================
      InkWell(
    onTap: () {
      onTap();
    },
    //==============================================
    //          F U N D O
    //============================================
    child: Container(
      height: 70,
      width: 230,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(boxShadow: [
        //=========================================
        //          S O M B R A
        //=========================================
        BoxShadow(
          color: Colors.grey.withOpacity(0.2), // Cor da sombra
          spreadRadius: 1, // Espalha a sombra para todas as direções
          blurRadius: 1, // Suaviza a borda da sombra
          offset: const Offset(3, 3), // Deslocamento da sombra
        ),
        //=========================================
        //        Cor e Texto do conteiner
        //=========================================
      ], color: color, borderRadius: BorderRadius.circular(10)),
      child: Container(
        margin: const EdgeInsets.only(left: 10, bottom: 15, top: 10, right: 10),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );

  // =======================================
}
