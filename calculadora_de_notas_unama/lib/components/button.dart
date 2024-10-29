import 'package:flutter/material.dart';

Widget button(
    {text = 'Proximo', required onTap, color = const Color(0xff639976)}) {
  return InkWell(
    onTap: () {
      onTap();
    },
    child: Container(
      height: 70,
      width: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Cor da sombra
              spreadRadius: 2, // Quão longe a sombra deve se estender
              blurRadius: 7, // Quão borrada a sombra deve ser
              offset: const Offset(0, 3), // Mudanças na posição da sombra
            ),
          ],
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
