import 'package:flutter/material.dart';
import 'package:rigolaz_2/constants.dart';

class Aide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AIDE'),
      ),
      body: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.live_help),
          title: Text(
            'FAQ',
            style: kAideTextStyle),
          onTap: () {
            Navigator.pushNamed(context, '/aide/faq');
          },
        ),
        ListTile(
          leading: Icon(Icons.notification_important),
          title: Text(
            'Contactez-nous',
            style: kAideTextStyle),
          onTap: () {
            Navigator.pushNamed(context, '/aide/contact');
          },
        ),
        ListTile(
          leading: Icon(Icons.update),
          title: Text(
            "Conditions d'utilisation",
            style: kAideTextStyle),
          onTap: () {
            Navigator.pushNamed(context, '/aide/cgu');
          },
        ),
        ListTile(
          leading: Icon(Icons.timer),
          title: Text(
            "Infos de l'application",
            style: kAideTextStyle,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/aide/apropos');
          },
        ),
      ],
    ),
    );
  }
}
