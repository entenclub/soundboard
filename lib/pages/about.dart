import 'package:flutter/material.dart';
import '../about/knossi.dart';
import '../about/monte.dart';
import '../about/stanni.dart';
import '../about/unge.dart';
import '../about/justin.dart';

class About extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: <Widget>[
        Monte(),
        Knossi(),
        Stanni(),
        Unge(),
        Justin()
]);}}