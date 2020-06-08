// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'main.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState(){
//     super.initState();

//     _mockCheckForSession().then(
//       (status) {
//         if(status) {
//           _navigateToHome();
//         }
//       }
//     );
//   }
  
//   Future<bool> _mockCheckForSession()async{
//     await Future.delayed(Duration(milliseconds: 5000), () {});

//     return true;
//   }

//   void _navigateToHome(){
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(
//         builder: (BuildContext context) => Rigolaz()
//       )
//     );
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[50],
//       body: Column(
//         children: <Widget>[
//           Center(
//             child: Image.asset('images/logo.PNG'),
//           ),
//           Center(
//             child: Image.asset('images/logo.PNG'),
//           )
//         ],
//       ),
//     );
//   }
// }
