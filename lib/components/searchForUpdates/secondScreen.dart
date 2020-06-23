import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter/services.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() {
    return new _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen> {
  String _version = "";

  Future<String> getVersion() async {
    return await rootBundle.loadString("assets/res/version.txt");
  }

  _SecondScreenState() {
    getVersion().then(
      (val) => setState(
        () {
          _version = val;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[Text("Deine installierte Version: " + _version)],
        ),
      ),
    );
  }
}
