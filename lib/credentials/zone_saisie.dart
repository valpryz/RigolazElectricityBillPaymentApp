import 'package:flutter/material.dart';

class ZoneSaisie extends StatelessWidget {
  final bool obscureText;
  final Function onChanged;
  final String labelText;
  final TextInputType keyboardType;
  final TextAlign textAlign;
  final int maxLength;
  final Function validator;
  ZoneSaisie(
      {this.obscureText,
      this.onChanged,
      this.labelText,
      this.keyboardType,
      this.textAlign,
      this.maxLength,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 17, fontFamily: 'Actor'),
      validator: validator,
      obscureText: obscureText,
      maxLength: maxLength,
      onChanged: onChanged,
      keyboardType: keyboardType,
      textAlign: textAlign,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        border: OutlineInputBorder(
          gapPadding: 1.0,
        ),
        labelText: labelText,
      ),
    );
  }
}
