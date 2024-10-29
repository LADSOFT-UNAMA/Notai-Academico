import 'package:flutter/material.dart';

Container topBar(double largura) {
  // ==================================================
  return Container(
    height: 90,
    width: largura,
    decoration: BoxDecoration(
      color: const Color(0xff639976),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.05),
          spreadRadius: 2,
          blurRadius: 3,
          offset: const Offset(0, 3),
        ),
      ],
      border: Border.all(width: 0.5),
    ),
    child: Row(
      children: [
        // ========================================================
        //           Logo LADSOFT
        // ========================================================
        Container(
          width: 90 - 17,
          height: 90 - 17,
          margin: const EdgeInsets.only(left: 30),
          decoration: BoxDecoration(
              image: const DecorationImage(
                  scale: 10.7,
                  image: AssetImage(
                    'image/Logo2.png',
                  )),
              // color: Colors.white,
              // border: Border.all(width: 1.5, color: Colors.white),
              shape: BoxShape.circle),
        ),
        // ========================================================
        //      texto logo
        // ========================================================

        Container(
          margin: const EdgeInsets.only(left: 0),
          child: const Text(
            'Calculadora de Notas ',
            style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.normal),
          ),
        ),
      ],
    ),
  );
  //===============================================================
}
