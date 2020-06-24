import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_animation_set/widget/transition_animations.dart';
import 'package:flutter_animation_set/widget/behavior_animations.dart';

class SearchForUpdates extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchForUpdatesState();
  }
}

class SearchForUpdatesState extends State<SearchForUpdates> {
  ScaffoldState scaffold;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void showSnackbar(String text) {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        duration: Duration(seconds: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
      ),
    );
  }

  bool isLoading;
  bool internetCon;

  var _version = "";
  var _currentVersion = "";

  final String apiUrl = "https://soundboard-version.herokuapp.com/api/version";

  @override
  void initState() {
    isLoading = true;
    internetCon = true;
    super.initState();
  }

  Future<String> getVersion() async {
    return await rootBundle.loadString("assets/res/version.txt");
  }

  Future<String> fetchVersion() async {
    try {
      var res = await http.get(apiUrl);
      return json.decode(res.body)['v'];
    } on SocketException {
      internetCon = false;
      return "";
    }
  }

  SearchForUpdatesState() {
    getVersion().then((value) => setState(() {
          _version = value;
        }));
    fetchVersion().then(
      (value) => setState(
        () {
          _currentVersion = value;
          isLoading = false;

          String msg;

          if (_version != "" &&
              _currentVersion != "" &&
              !_currentVersion.startsWith("KEINE")) {
            if (_version == _currentVersion) {
              msg = "Du bist auf dem neusten Stand! 🙂";
            } else {
              msg =
                  "Öffne den Google Play Store und lad die neuste Version herunter! 😡";
            }
          } else if (internetCon == false) {
            msg = "Du hast keine Internetverbindung! 🛰️";
          }

          showSnackbar(msg);
        },
      ),
    );
  }

  TextStyle txtStyle = TextStyle(fontSize: 20, fontFamily: "Horizon");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Nach Updates suchen"),
      ),
      body: Container(
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Deine installierte Version: " + _version,
                        style: txtStyle),
                    Text(
                      "Die aktuellste Version: " + _currentVersion,
                      style: txtStyle,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
