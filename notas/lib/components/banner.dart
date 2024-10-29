import 'package:flutter/material.dart';

Widget banner(largura) {
  return Container(
      margin: EdgeInsets.only(top: 20),
      width: largura - 50,
      height: 300,
      decoration: BoxDecoration(border: Border.all(width: 0.8)));
}
