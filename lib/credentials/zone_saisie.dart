import 'package:flutter/material.dart';

class ZoneSaisie extends StatelessWidget {
  final bool obscureText;
  final Function onChanged;
  final String labelText;
  final TextInputType keyboardType;
  final TextAlign textAlign;
  ZoneSaisie(
      {this.obscureText, this.onChanged, this.labelText, this.keyboardType, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 15,
        fontFamily: 'Actor'
      ),
      obscureText: obscureText,
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
