import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import necessário para usar FilteringTextInputFormatter



Widget inputSection(double largura, String text, {required TextEditingController controller,required onChanged}) {
  return SizedBox(
    width: largura - 50,
    height: 130,
    child: Column(
      children: [
        // ==================================================
        // Label
        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        // ==================================================
        // TextField
        Expanded(
          child: TextField(
            
            onChanged: (value){
              onChanged(value);
            },
            maxLength: 4,
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true), // Habilita a entrada de ponto decimal
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')), // Permite apenas números e ponto, aplicado a cada caractere inserido
            ],
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(20),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              hintText: 'Digite algo...',
            ),
          ),
        ),
        // ==================================================
      ],
    ),
  );
}
