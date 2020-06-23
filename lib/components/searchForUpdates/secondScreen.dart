import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'dart:convert';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() {
    return new _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen> {
  String _version = "";
  var _currentVersion = "";
  final String apiUrl = "https://soundboard-version.herokuapp.com/api/version";

  Future<String> getVersion() async {
    return await rootBundle.loadString("assets/res/version.txt");
  }

  Future<String> fetchVersion() async {
    var res = await http.get(apiUrl);
    print(res);
    return json.decode(res.body)['v'];
  }

  _SecondScreenState() {
    getVersion().then(
      (val) => setState(
        () {
          _version = val;
        },
      ),
    );
    fetchVersion().then((val) => setState(() {
          _currentVersion = val;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Deine installierte Version: " + _version),
            Text("Die aktuellste Version: " + _currentVersion)
          ],
        ),
      ),
    );
  }
}
