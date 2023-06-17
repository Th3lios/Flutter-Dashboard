import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../decorations.dart';

class InputText extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final Function onChange;

  InputText({
    required this.labelText,
    this.obscureText = false,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        onChange(value);
      },
      obscureText: obscureText,
      style: const TextStyle(
        color: Color(0xFF1D1E33),
        fontSize: 12.0,
      ),
      decoration: kTextFieldDecoration.copyWith(
        labelText: labelText,
      )
    );
  }
}
