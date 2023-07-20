import 'package:flutter/material.dart';

class TextInputMaterial extends StatelessWidget {
  const TextInputMaterial(
      {super.key, required this.onChangeListener, required this.labelText, this.obscureText = false});

  final bool obscureText;
  final dynamic onChangeListener;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: 250,
        child: TextField(
          onChanged: (text) => {onChangeListener(text)},
          obscureText: obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: labelText,
          ),
        ),
      ),
    );
  }
}
