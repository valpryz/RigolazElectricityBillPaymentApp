import 'package:flutter/material.dart';

class BlocRecapitulatifAchat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'N de Compteur',
                  style: TextStyle(
                    fontFamily: 'YesevaOne',
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                  ),
                  child: Text(
                    '012345678910',
                    style: TextStyle(
                        fontFamily: 'YesevaOne',
                        fontSize: 30,
                        color: Colors.green),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Prix:',
                          style:
                              TextStyle(fontFamily: 'YesevaOne', fontSize: 14),
                        ),
                        SizedBox(width: 55),
                        Container(
                          child: Text(
                            'XAF',
                            style: TextStyle(
                                fontFamily: 'YesevaOne', fontSize: 14),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Frais:',
                          style:
                              TextStyle(fontFamily: 'YesevaOne', fontSize: 14),
                        ),
                        SizedBox(width: 55),
                        Container(
                          child: Text(
                            'XAF',
                            style: TextStyle(
                                fontFamily: 'YesevaOne', fontSize: 14),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Total:',
                          style:
                              TextStyle(fontFamily: 'YesevaOne', fontSize: 14),
                        ),
                        SizedBox(width: 55),
                        Container(
                          child: Text(
                            'XAF',
                            style: TextStyle(
                                fontFamily: 'YesevaOne', fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: 2,
                  color: Colors.black,
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'Quantité',
                          style: TextStyle(fontFamily: 'YesevaOne', fontSize: 14),
                        ),
                      ),
                      // SizedBox(height: 25),
                      Container(
                        child: Text('100KWH'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
