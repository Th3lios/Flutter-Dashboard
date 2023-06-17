import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const OutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 20.0,
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        foregroundColor: const Color(0xFFFF7B00),
        textStyle: const TextStyle(
          fontSize: 12.0,
          color: Color(0xFFFF7B00),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(
            color: Color(0xFFFF7B00),
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}