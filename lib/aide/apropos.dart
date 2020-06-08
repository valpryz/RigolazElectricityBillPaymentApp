import 'package:flutter/material.dart';

class Apropos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("INFOS DE L'APPLICATION")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
      Image.asset('images/logo_rigolaz.png'),
      Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          '''
      Application version beta
      Editeur :
      Rigobert EKWA MOUNGUI
      ''',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Text(
        '''   2017-2020 RIGOLAZ''',
        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
        textAlign: TextAlign.center,
      )
        ],
      ),
    );
  }
}
