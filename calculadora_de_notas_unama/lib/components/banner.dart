import 'package:flutter/material.dart';

class bannerWidget extends StatelessWidget {
  double tamanho;
  AssetImage assetImage;
  bannerWidget(this.tamanho, this.assetImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: tamanho - 60,
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(image: assetImage, fit: BoxFit.fitHeight),
      ),
    );
  }
}
