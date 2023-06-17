import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 20.0,
        ),
        backgroundColor: const Color(0xFFFF7B00),
        foregroundColor: const Color(0xFFFFFFFF),
        textStyle: const TextStyle(
          fontSize: 12.0,
        ),
      ),
      child: Text(text),
    );
  }
}