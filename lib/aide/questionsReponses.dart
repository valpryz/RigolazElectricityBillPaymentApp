import 'package:flutter/material.dart';

import '../constants.dart';

class QuestionsReponses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: <Widget>[
          Text(
            "Qu’est-ce que l’application RIGOLAZ?",
            style: kQuestionHeader),
          SizedBox(height: 20),
          Text(
            '''
L’application RIGOLAZ est un service de mobile e-billing dans le cadre des compteurs à prépaiement, accessible 24h/24 et 7j/7.  
L’application RIGOLAZ vous permet donc entre autre de :
•	Effectuer l’achat de crédit pour son propre compte
•	Faire un achat pour un tiers à partir de l’étranger ou en mode local.
•	Choisir un(e) opérateur/banque de son choix pour l’achat de crédit.
•	Consulter l’historique des achats.
•	Avoir accès à son compteur à distance( Voir la courbe de charge, recharger son compteur, commander son compteur). Option disponible en PREMIUM.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Qui peut souscrire à l’application mobile RIGOLAZ?",
            style: kQuestionHeader),
          SizedBox(height: 20),
          Text(
            '''Ce service est ouvert à tous, particuliers et Professionnels disposant ou pas d’un compteur prépayé, soit pour Effectuer l’achat de crédit pour son propre compteur, soit pour acheter du crédit pour un tiers. 
 ''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Quels sont les avantages de l’application mobile RIGOLAZ?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''•	Etre autonome : Vous gérez votre compte prépayé en toute autonomie, vous pouvez consulter l’historique de vos transactions.
•	Economiser du temps et de l’argent : Ici le service est disponible 24/7. Gagnez donc un temps précieux en évitant de vous déplacer en agence juste pour les opérations courantes.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Comment souscrire à l’application mobile RIGOLAZ?",
            style: kQuestionHeader),
          SizedBox(height: 20),
          Text(
            '''Pour souscrire à ce service, il faut tout d’abord télécharger l’application dans un téléphone Android compatible, ensuite renseigner le formulaire d’enregistrement. Un message contenant votre identifiant et votre mot de passe vous sera envoyé à vos différentes coordonnées.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Renseigner un numéro lors de la souscription différent de celui déclaré à l’agence bloquerait il ma souscription?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Non, pas du tout. Vous êtes libre de mettre les coordonnées à votre guise. Puisque ce n’est pas toujours celui qui passe à l’agence pour demander les compteurs qui va forcément les utiliser. Prenons exemple d’un bailleur qui demande les compteurs prépayés pour ses futurs locataires.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Si lors de mon enregistrement, je me rends compte que le compteur que je veux utiliser est la propriété  d’un autre utilisateur, que faire?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''En effet, dans les cas où un utilisateur d’un compteur viendrait à déménager ou à libérer physiquement ce dernier, il est possible que le nouveau venu demande la propriété de dudit compteur. Lors lde la tentative d’enregistrement.
Le message suivant s’affichera...
Ce compteur N°************ est actuellement la propriété de quelqu’un d’autre. Voulez-vous lui demander de vous passer la main ?
...Dès votre validation, l’ex utiliseur recevra donc une notification lui demandant deliérer le compteur. Vous serez donc informé dès la libération du compteur via les contacts que vous avez renseignés lors de la tentative d’enregistrement.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Combien de temps après la demande de propriété devrais-je attendre pour la libération du compteur?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''La durée maximale pour réaction de libération de compteur par l’ex propriétaire est de 24h. Passé ce delais, Le service RIGOLAZ prendra la charge de contacter le client pour lui demander la permission afin de libérer le compeur demandé dans le système.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Quel sont les téléphones compatibles avec RIGOLAZ?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Les téléphones sous système 
Android. Le développement de 
Mac/Pc,iPhone, et
Windows phone
 étant cours de développement.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Quels sont les systèmes d’exploitation mobiles compatibles avec l’application RIGOLAZ?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Android 4.1, etc…''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "A quoi servent les mise-à-jour de l’application RIGOLAZ?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Les mise-à-jour permettent à votre application RIGOLAZ de fonctionner de façon optimale et d’améliorer la version présente dans votr appareil.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "A quoi sert la notification d’activation que j’ai reçue par SMS?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Les informations présentes dans le sms vous servirons pour vous loguer (Identifiant + Mot de passe).''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Je n’ai pas reçu de code de notification d’activation par SMS. Que faut-il faire?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Si au bout de plusieurs tentatives, si vous ne recevez toujours pas de code, bien vouloir nous contacter au numéro Whatsapp RIGOLAZ (237) 677077030, 7J/7, de 08h à 20h.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Puis-je mémoriser mes coordonnées saisies lors du login pour ne pas avoir le refaire ?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Oui bien sûr. Pour éviter de renseigner les coordonnées de login à chaque utilisation de l’application, vous pouvez
Cocher la case  Mémoriser le mot de passe. Vos coordonnées ne vous seront plus demandées dans les 3 mois qui suivront. Passé ce delais, votre mot de passe vous sera redemandé. NB : Vous pouvez décocher la case à tout moment pour annuler la mémorisation des coordonnées de login.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Puis je me connecter sur un autre téléphone tout en ayant déjà mémorisé mes coordonnées de login dans un téléphone en particulier et bénéficier de toutes mes données ? ",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Bien sûr que oui. Vous pouvez vous connecter dans autant de téléphones que vous souhaitez et bénéficier des mêmes options''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Devrait me soucier si un tiers venait à accéder à mon profil sans mon accord?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''L’application RIGOLAZ a des niveaux de sécurité infaillibles. Un tiers, même ayant accédé à votre profil ne pourrait pas générer de crédit d’électricité avec vos coordonnées bancaires ou d’opérateur.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "J’ai oublié mes coordonnées de login, que faire?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Dans le pavé de login, allez à l’onglet        , puis sur Mot de passe oublié,      
Vous devriez renseigner le numéro de compteur et votre numéro de téléphone. Vos coordonnées vous seront automatiquement transmises à vos différents contacts.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "J’ai changé de numéro de téléphone/ adresse Mail. Que faire pour actualiser mes coordonnées dans l’apllication ?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Allez sur , → Paramètres        , → Compte, →Modifier, enfin renseignez et validez. A la fin, vous serez notifiés à vos nouvelles coordonnées.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "A quoi sert LA COMMUNICATION COMPTEUR A DISTANCE?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Le segment premium vous donne la possibilité de:
-Interagir (en push) avec son compteur en passant par l’appli. Vous pourriez donc :
-Voir les courbes de charge
- Voir le solde en compteur
-Recharger votre compteur à distance
-Avoir des alertes du compteur (Manque de crédit, manque de courant, manque de phase, etc…)
Option disponible pour les abonnés premium''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "Pourrais-je avoir des infos sur les travaux programmés et autres infos utiles?",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Oui. Par cette icone au pied de page              , Vous pourrez être au courant des travaux programmés sur le réseau électrique afin de ne pas être surpris par les coupures. Vous pourrez aussi avoir des informations utiles pour l’utilisatoin optimale de votre énergie électrique pour plus d’économie avec une assistance de nos ingenieurs de par le monde.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          Text(
            "En cas de problème et pour tout besoin d’assistance, que faire ? ",
            style: kQuestionHeader
          ),
          SizedBox(height: 20),
          Text(
            '''Bien vouloir nous contacter gratuitement à la boite de dialogue en ligne             concue pour vous, tous les jours 7J/7, de 08h à 20h.''',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Actor',
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
