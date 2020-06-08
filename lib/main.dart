import 'package:flutter/material.dart';
import 'package:rigolaz_2/credentials/forgotpass.dart';
import 'package:rigolaz_2/credentials/signup.dart';
import 'package:rigolaz_2/historique/historique.dart';
import 'package:rigolaz_2/moncompte/monCompte.dart';
import 'package:rigolaz_2/parametres/parametres.dart';
import 'package:rigolaz_2/recapitulatifPaiement/recapitulatif_paiement.dart';
import 'package:rigolaz_2/travaux/travaux.dart';
import './aide/aide.dart';
import './aide/apropos.dart';
import './aide/cgu.dart';
import './aide/contact.dart';
import './astucesEtConseils/astucesEtConseils.dart';
import './credentials/login.dart';
import './ongletAchat.dart';
import './ongletTelecomm.dart';
import './ongletCode.dart';
import 'aide/questionsReponses.dart';
import 'constants.dart';
import 'notifications/notifications.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFFFFFFF),
        ),
        initialRoute: '/',
        routes: {
          '/astuces': (context) => AstucesEtConseils(),
          '/aide': (context) => Aide(),
          '/aide/faq': (context) => QuestionsReponses(),
          '/aide/contact': (context) => Contact(),
          '/aide/cgu': (context) => CGU(),
          '/aide/apropos': (context) => Apropos(),
          '/se_connecter': (context) => Login(),
          '/se_connecter/s_inscrire': (context) => SignUp(),
          '/se_connecter/forgotpass': (context) => ForgotPass(),
          '/mon_compte': (context) => MonCompte(),
          '/notifications': (context) => Notifications(),
          '/historique': (context) => Historique(),
          '/travaux': (context) => Travaux(),
          '/parametres': (context) => Parametres(),
          '/recapitulatifachat': (context) => RecapitulatifPaiement()
        },
        debugShowCheckedModeBanner: false,
        home: Rigolaz(),
      ),
    );

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
    Color color}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(
      title,
      style: TextStyle(color: color, fontSize: 17, fontFamily: 'Actor'),
    ),
    onTap: () {
      // Navigator.pop(context);
      Navigator.pushNamed(context, url);
    },
  );
}

class Rigolaz extends StatelessWidget {
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
                    child: Column(children: <Widget>[
                      Image.asset(
                        'images/logo_rigolaz.png',
                        width: 150,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, '/se_connecter');
                        },
                        title: Text(
                          'Déconnecté',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text('Se connecter?'),
                        trailing: Icon(Icons.account_circle),
                      )
                    ]),
                  ),
                  listtile(
                      title: 'Compte',
                      icon: Icons.person,
                      context: context,
                      color: kDrawerIsOffline),
                  listtile(
                      title: 'Notifications',
                      icon: Icons.notifications,
                      context: context,
                      color: kDrawerIsOffline),
                  listtile(
                      title: 'Historique',
                      icon: Icons.timer,
                      context: context,
                      color: kDrawerIsOffline),
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
                      url: '/aide'),
                  listtile(
                      title: 'Astuces & Conseils',
                      icon: Icons.contact_phone,
                      context: context,
                      url: '/astuces')
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
