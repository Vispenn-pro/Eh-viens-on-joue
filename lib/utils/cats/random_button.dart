import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

class RandomButton extends StatefulWidget {
  const RandomButton({Key? key}) : super(key: key);

  @override
  State<RandomButton> createState() => _RandomButtonState();
}

class _RandomButtonState extends State<RandomButton>{
  @override
  Widget build(BuildContext context) {
    final appState = context.watch<MyAppState>();

    return Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            shape:
            MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              )
            ),
          ),
          onPressed: () => {appState.search()},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Get a random fact",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24)
            ),
          ),
        ),
      ],
    );
  }
}
