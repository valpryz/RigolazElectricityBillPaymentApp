import 'package:flutter/material.dart';

class OngletCode extends StatelessWidget {
  Widget list({String title, String subTitle, String code}) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Actor',
          ),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
        trailing: Text(
          code,
          style: TextStyle(fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          list(
              title: 'Energie Totale Consommee',
              subTitle: 'Total Energy Consumption',
              code: '800'),
          list(title: 'Solde en KVH', subTitle: 'Credit Balance', code: '801'),
          list(title: 'Date Actuelle', subTitle: 'Current Date', code: '802'),
          list(title: 'Heure Actuelle', subTitle: 'Current Time', code: '803'),
          list(
              title: 'Numero du Compteur (8 + 3 chiffres defilants)',
              subTitle: 'Meter Number (8 + 3 digits)',
              code: '804'),
          list(
              title: "Annuler l'Alarme Sonore",
              subTitle: 'Cancel Audible Alarm',
              code: '812'),
          list(
              title: 'Consommation du Jour Precedent',
              subTitle: 'Consumption in Last Day',
              code: '813'),
          list(
              title: 'Energie mensuelle consommée',
              subTitle: 'monthly energy consumed',
              code: '814'),
          list(
              title: 'Date de la Derniere Recharge',
              subTitle: 'Date of Last Recharge',
              code: '815'),
          list(
              title: 'Heure de la Derniere Recharge',
              subTitle: 'Time of Last Recharge',
              code: '816'),
          list(
              title: 'Montant de la Derniere Recharge',
              subTitle: 'Amount of Last Recharge',
              code: '817'),
          list(
              title: 'Nombre de Coupures',
              subTitle: 'Times of Power Off',
              code: '819'),
          list(
              title: 'Energie Active Consommee le Mois Dernier',
              subTitle: 'Active Energy consumed in last month',
              code: '820'),
          list(
              title: "Energie Active Consommee l'avant dernier mois",
              subTitle: 'Active Energy consumed in 2nd last month',
              code: '821'),
          list(
              title: "Energie Active Consommee il y'a 3 mois",
              subTitle: 'Active Energy consumed in 3rd last month',
              code: '822'),
          list(
              title: "Energie Active Consommee il y'a 4 mois",
              subTitle: 'Active Energy consumed in 4th last month',
              code: '823'),
          list(
              title: "Energie Active Consommee il y'a 5 mois",
              subTitle: 'Active Energy consumed in 5th last month',
              code: '824'),
          list(
              title: "Energie Active Consommee il y'a 6 mois",
              subTitle: 'Active Energy consumed in 6th last month',
              code: '825'),
          list(
              title: 'Dernier Code de Recharge',
              subTitle: 'Last Recharge Token',
              code: '830'),
          list(
              title: '2eme Recharge Precedente',
              subTitle: '2nd Last Recharge Token',
              code: '831'),
          list(
              title: '3e Recharge Precedente',
              subTitle: '3rd Last Recharge Token',
              code: '832'),
          list(
              title: '4e Recharge Precedente',
              subTitle: '4th Last Recharge Token',
              code: '833'),
          list(
              title: '5e Recharge Precedente',
              subTitle: '5th Last Recharge Token',
              code: '834'),
          list(
              title: '6e Recharge Precedente',
              subTitle: '6th Last Recharge Token',
              code: '835'),
          list(
              title: '7e Recharge Precedente',
              subTitle: '7th Last Recharge Token',
              code: '836'),
          list(
              title: '8e Recharge Precedente',
              subTitle: '8th Last Recharge Token',
              code: '837'),
          list(
              title: '9e Recharge Precedente',
              subTitle: '9th Last Recharge Token',
              code: '838'),
          list(
              title: '10e Recharge Precedente',
              subTitle: '10th Last Recharge Token',
              code: '839'),
          list(
              title: 'Niveau Limite de Puissance',
              subTitle: 'Power Limit Level',
              code: '869'),
          list(
              title: 'Tension de la Phase A',
              subTitle: 'Phase A Voltage',
              code: '870'),
          list(
              title: 'Tension de la Phase B',
              subTitle: 'Phase B Voltage',
              code: '871'),
          list(
              title: 'Tension de la Phase C',
              subTitle: 'Phase C Voltage',
              code: '872')
        ],
      ),
    );
  }
}
