import 'package:flutter/material.dart';

import '../constants.dart';

class InfosCompte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infos compte'),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              width: 150,
              child: Image.asset(
                'images/logo_rigolaz.png',
                width: 100,
              ),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: 'Identifiant : ',
                    style: kAideTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'thom5701',
                        style: TextStyle(color: Color(0xff625FEA)),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Numéro de compteur : ',
                    style: kAideTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                        text: '014294725701',
                        style: TextStyle(color: Color(0xff625FEA)),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Numéro de téléphone : ',
                    style: kAideTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                        text: '(237) 6930337537',
                        style: TextStyle(color: Color(0xff625FEA)),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Adresse Mail : ',
                    style: kAideTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'n_thomy@yahoo.fr',
                        style: TextStyle(color: Color(0xff625FEA)),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Programme tarifaire : ',
                    style: kAideTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'FAMILY',
                        style: TextStyle(color: Color(0xff625FEA)),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Puissance Max : ',
                    style: kAideTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                        text: '4.4KWh',
                        style: TextStyle(color: Color(0xff625FEA)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Container(
//             child: Column(
//               children: <Widget>[
//                 RichText(
//                   text: TextSpan(
//                     text: 'Identifiant : ',
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: 'thom5701',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 RichText(
//                   text: TextSpan(
//                     text: 'Identifiant : ',
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: 'thom5701',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 RichText(
//                   text: TextSpan(
//                     text: 'Identifiant : ',
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: 'thom5701',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 RichText(
//                   text: TextSpan(
//                     text: 'Identifiant : ',
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: 'thom5701',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 RichText(
//                   text: TextSpan(
//                     text: 'Identifiant : ',
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: 'thom5701',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 RichText(
//                   text: TextSpan(
//                     text: 'Identifiant : ',
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: 'thom5701',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           )
