import 'package:flutter/material.dart';

class AstucesEtConseils extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ASTUCES ET CONSEILS'),
        ),
        body: Center(
          child: Text(
            "En cours d'élaboration...",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, fontFamily: 'YesevaOne'),
          ),
        ));
  }
}
