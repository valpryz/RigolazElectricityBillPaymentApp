import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONTACTEZ-NOUS'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text("Vous pourrez nous contacter gratuitement dans la boite de dialogue GOLAZ CHAT(De lundi à Samedi, de 07h à 20h et dimanche de 13h à 18h.",
        style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,),
      ),
    );
  }
}