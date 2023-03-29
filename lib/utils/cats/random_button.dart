import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar>{
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
