import 'package:flutter/material.dart';

class Entete extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          padding: EdgeInsets.only(top: 15),
          child: Image.asset(
            'images/logo_rigolaz.png',
            height: 45,
          ),
        )
      ],
    );
  }
}
