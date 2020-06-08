import 'package:flutter/material.dart';

class ZoneSaisie extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 15,
      ),
      autofocus: false,
      obscureText: false,
      keyboardType: TextInputType.text,
      textAlign: TextAlign.end,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        border: OutlineInputBorder(
          gapPadding: 1.0,
        ),
        labelText: 'Identifiant',
      ),
    );
  }
}
