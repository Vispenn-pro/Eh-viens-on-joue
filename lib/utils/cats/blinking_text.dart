import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

class BlinkingText extends StatefulWidget {
  final String _target;
  const BlinkingText(this._target, {Key? key}) : super(key: key);

  @override
  State<BlinkingText> createState() => _BlinkingTextState();
}

class _BlinkingTextState extends State<BlinkingText> {

  bool _show = true;
  Timer? _timer;

  @override
  void initState(){
    _timer = Timer.periodic(const Duration(milliseconds: 500), (_) {
      setState(() => {_show = !_show});
    });
    super.initState();
  }

  @override
  void dispose(){
    _timer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Text(widget._target,
  style: _show
  ? const TextStyle(fontSize: 64)
      : const TextStyle(fontSize: 64, color: Colors.transparent));
}
