import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rigolaz_2/rigolazconnected.dart';
import 'package:rigolaz_2/rigolaznotconnected.dart';

import 'package:rigolaz_2/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    if (user == null){
      return RigolazNotConnected();
    }else {
      return RigolazConnected();
    }
  }
}