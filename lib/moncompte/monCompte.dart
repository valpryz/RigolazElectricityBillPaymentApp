import 'package:flutter/material.dart';
import 'package:rigolaz_2/constants.dart';

class MonCompte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compte'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.perm_identity),
            title: Text('Infos compte', style: kAideTextStyle),
            onTap: () {
              Navigator.pushNamed(context, '/mon_compte/infos_compte');
            },
          ),
          ListTile(
            leading: Icon(Icons.notification_important),
            title: Text('Modifier mon compte', style: kAideTextStyle),
            onTap: () {
              Navigator.pushNamed(context, '/mon_compte/modifier_compte');
            },
          ),
          ListTile(
            leading: Icon(Icons.update),
            title: Text("Supprimer mon compte", style: kAideTextStyle),
            onTap: () {
              Navigator.pushNamed(context, '/mon_compte/supprimer_compte');
            },
          ),
        ],
      ),
    );
  }
}
