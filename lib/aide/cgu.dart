import 'package:flutter/material.dart';

class CGU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONDITIONS D'UTILISATION"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Text(
          "Lors de l’utilisation de l’application, en plus des données personnelles que nous collectons pour les besoins de service, nous et nos partenaires sommes susceptibles, de collecter les données vous concernant, liées à votre appareil mobile (Données collectées via le micro, adresse MAC de la puce WIFI, identifiant publicitaire). Dans l’intérêt des services proposés, le traitement de vos données permet d’assurer une meilleure qualité de l’utilisation de l’application et de réaliser des études et des statistiques. Ces données sont susceptibles d’être traitées dans le but de vous fournir de la publicité ciblée, adaptée à vos centres d’intérêt  ou à votre profil.",
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Actor',
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
