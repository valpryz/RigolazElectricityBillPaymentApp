import 'package:flutter/material.dart';
import 'package:rigolaz_2/constants.dart';
import 'package:rigolaz_2/parametres/notifications.dart';

class Parametres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PARAMETRES'),
      ),
      body: Settings(),
    );
  }
}

bool isSwitched = true;

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
            title: Text(
              'Notifications',
              style: kParametresTitle,
            ),
            subtitle: Text(
              'Sonnerie, Vibreur, Voyant',
              style: kParametresSubtitle,
            ),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => Notifications(),
                ),
              );
            }),
        ListTile(
          title: Text(
            'Langues',
            style: kParametresTitle,
          ),
          subtitle: Text(
            'Français',
            style: kParametresSubtitle,
          ),
        ),
        ListTile(
          
          title: Text(
            'Télécharger les fichiers',
            style: kParametresTitle,
          ),
          subtitle: Text(
            'Télécharger les fichiers PDF',
            style: kParametresSubtitle,
          ),
          trailing: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            activeTrackColor: Colors.green,
            activeColor: Colors.green,
          ),
          onTap: (){
            setState(() {
              isSwitched = !isSwitched;
            });
          },
        )
      ],
    );
  }
}
