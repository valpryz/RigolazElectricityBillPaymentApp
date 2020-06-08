import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rigolaz_2/credentials/forgotpass.dart';
import 'package:rigolaz_2/credentials/signup.dart';
import 'package:rigolaz_2/historique/historique.dart';
import 'package:rigolaz_2/models/user.dart';
import 'package:rigolaz_2/moncompte/monCompte.dart';
import 'package:rigolaz_2/parametres/parametres.dart';
import 'package:rigolaz_2/recapitulatifPaiement/recapitulatif_paiement.dart';
import 'package:rigolaz_2/services/auth.dart';
import 'package:rigolaz_2/travaux/travaux.dart';
import 'package:rigolaz_2/wrapper.dart';
import './aide/aide.dart';
import './aide/apropos.dart';
import './aide/cgu.dart';
import './aide/contact.dart';
import './astucesEtConseils/astucesEtConseils.dart';
import './credentials/login.dart';
import 'aide/questionsReponses.dart';
import 'notifications/notifications.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFFFFFFF),
        ),
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
        home: Wrapper(),
      ),
    );
  }
}
