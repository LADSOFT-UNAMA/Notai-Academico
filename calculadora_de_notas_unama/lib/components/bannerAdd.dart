import 'package:flutter/material.dart';

// ignore: must_be_immutable
class bannerWidgetAdd extends StatelessWidget {
  double tamanho;
  bannerWidgetAdd(this.tamanho);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('image/Add_New.png'), fit: BoxFit.fitHeight),
      ),
    );
  }
}
