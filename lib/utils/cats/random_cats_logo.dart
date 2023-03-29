import 'package:flutter/material.dart';
import 'package:evoj/utils/cats/blinking_text.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Random", style: TextStyle(fontSize: 52)),
            Text("Cat", style: TextStyle(fontSize: 52)),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: BlinkingText('|'),
            ),
          ],
        ),
      ],
    );
  }
}
