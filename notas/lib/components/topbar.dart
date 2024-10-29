import 'package:flutter/material.dart';

Container topBar(double largura) {
  return Container(
    //===============================================================
    height: 90,
    width: largura,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.05), // Cor da sombra
          spreadRadius: 2, // Espalha a sombra para todas as direções
          blurRadius: 3, // Suaviza a borda da sombra
          offset: Offset(0, 3), // Deslocamento da sombra
        ),
      ],
      border: Border.all(width: 0.5),
    ),
    child: Row(
      children: [
        // ===============================
        //      Logo
        Container(
          width: 90 - 20,
          height: 90 - 20,
          margin: EdgeInsets.only(left: 30),
          decoration: BoxDecoration(
              border: Border.all(width: 0.8), shape: BoxShape.circle),
        ),
        // ===============================
        //      text
        Container(
            margin: EdgeInsets.only(left: 20),
            child: Text('Lorem ipsum ',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.w300)))
      ],
    ),
  );
  //===============================================================
}
