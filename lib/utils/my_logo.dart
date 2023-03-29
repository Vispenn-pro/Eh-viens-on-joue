import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  final double height;
  final double width;
  final double fontSize;

  const MyLogo({Key? key, required this.height, required this.width, required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image(
            image: const AssetImage('lib/assets/images/logo.png'),
            height: height,
            width: width,
          ),
        ),
        Text(
          "Eh viens on joue",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
