import 'package:flutter/material.dart';
import 'package:rigolaz_2/services/auth.dart';
import './ongletAchat.dart';
import './ongletTelecomm.dart';
import './ongletCode.dart';
import 'constants.dart';

final appBar = AppBar(
  leading: Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
  bottom: TabBar(
    tabs: [
      Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Text('ACHAT'),
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Text('TELECOM'),
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Text('CODES'),
      ),
    ],
  ),
  title: Text('Rigolaz'),
);

Widget listtile(
    {String title,
    IconData icon,
    BuildContext context,
    String url,
    Color color,
    Function onTap}) {
  return ListTile(
    leading: Icon(icon),
    title: GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(color: color, fontSize: 17, fontFamily: 'Actor'),
      ),
    ),
    onTap: () {
      // Navigator.pop(context);
      Navigator.pushNamed(context, url);
    },
  );
}

class RigolazConnected extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    {
      return SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: appBar,
            body: TabBarView(
              children: [
                OngletAchat(),
                OngletTelecomm(),
                OngletCode(),
              ],
            ),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'images/test.png',
                          width: 450,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Thom5701',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '014294725701',
                                  style: TextStyle(color: Colors.grey[500]),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  listtile(
                      title: 'Compte',
                      icon: Icons.person,
                      context: context,
                      url: '/mon_compte',
                      color: kDrawerIsConnected),
                  listtile(
                      title: 'Notifications',
                      icon: Icons.notifications,
                      context: context,
                      url: '/notifications',
                      color: kDrawerIsConnected),
                  listtile(
                      title: 'Historique',
                      icon: Icons.timer,
                      context: context,
                      url: '/historique',
                      color: kDrawerIsConnected),
                  listtile(
                      title: 'Travaux Programmés',
                      icon: Icons.build,
                      context: context,
                      url: '/travaux',
                      color: kDrawerIsConnected),
                  listtile(
                      title: 'Paramètres',
                      icon: Icons.settings,
                      context: context,
                      url: '/parametres',
                      color: kDrawerIsConnected),
                  listtile(
                      title: 'Aide',
                      icon: Icons.question_answer,
                      context: context,
                      url: '/aide',
                      color: kDrawerIsConnected),
                  listtile(
                      title: 'Astuces & Conseils',
                      icon: Icons.contact_phone,
                      context: context,
                      url: '/astuces',
                      color: kDrawerIsConnected),
                  listtile(
                      title: 'Déconnexion',
                      icon: Icons.cancel,
                      context: context,
                      url: '/astuces',
                      color: kDrawerIsConnected,
                      onTap: () async {
                        await _auth.signOut();
                      })
                  // ListTile(
                  //   leading: Icon(Icons.contact_phone),
                  //   title: Text(
                  //     'Astuces & Conseils',
                  //     style: TextStyle(
                  //         color: Colors.grey[700],
                  //         fontSize: 17,
                  //         fontFamily: 'Actor'),
                  //   ),
                  //   onTap: () {
                  //     Navigator.pop(context);
                  //     Navigator.pushNamed(context, '/astuces');
                  //   },
                  // )
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
