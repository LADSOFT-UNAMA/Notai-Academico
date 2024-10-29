import 'package:flutter/material.dart';

Widget entradaDeTexto(largura, text) {
  return Container(
    height: 100,
    width: largura - 50,
    // color: Colors.red,
    child: Column(
      children: [
        // ==================================================
        //      text-> lorem ipsum
        Expanded(
            flex: 60,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                // color: Colors.green,
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            )),
        // ==================================================
        //      text-> lorem ipsum
        Expanded(
            flex: 100,
            child: Container(
              alignment: Alignment.center,
              // color: Colors.grey,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  // Placeholder
                  hintText: 'Digite algo...',
                  border: OutlineInputBorder(
                    // Aplica o arredondamento das bordas
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            )),
        // ==================================================
      ],
    ),
  );
}
