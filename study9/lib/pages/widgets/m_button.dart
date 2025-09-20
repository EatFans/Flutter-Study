import 'package:flutter/material.dart';

class MButton extends StatelessWidget {

  final String text;

  VoidCallback onPressed;

  MButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
      color: Colors.yellow,
      child: Text(text),
    );
  }
}
