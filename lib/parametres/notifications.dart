import 'package:flutter/material.dart';
import '../constants.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOTIFICATIONS'),
      ),
      body: SettingsNotifications(),
    );
  }
}

bool notificationIsSwitched = true;
bool vibreurIsSwitched = true;

class SettingsNotifications extends StatefulWidget {
  const SettingsNotifications({
    Key key,
  }) : super(key: key);

  @override
  _SettingsNotificationsState createState() => _SettingsNotificationsState();
}

class _SettingsNotificationsState extends State<SettingsNotifications> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Sonnerie de notification',
            style: kParametresTitle,
          ),
          trailing: Switch(
            value: notificationIsSwitched,
            onChanged: (value) {
              setState(() {
                notificationIsSwitched = value;
              });
            },
            activeTrackColor: Colors.green,
            activeColor: Colors.green,
          ),
          onTap: (){
            setState(() {
              notificationIsSwitched = !notificationIsSwitched;
            });
          },
        ),
        ListTile(
          title: Text(
            'Vibreur',
            style: kParametresTitle,
          ),
          trailing: Switch(
            value: vibreurIsSwitched,
            onChanged: (value) {
              setState(() {
                vibreurIsSwitched = value;
              });
            },
            activeTrackColor: Colors.green,
            activeColor: Colors.green,
          ),
          onTap: (){
            setState(() {
              vibreurIsSwitched = !vibreurIsSwitched;
            });
          },
        ),
        ListTile(
          title: Text(
            'Voyant',
            style: kParametresTitle,
          ),
          subtitle: Text(
            'Aucun',
            style: kParametresSubtitle,
          ),
        ),
      ],
    );
  }
}
