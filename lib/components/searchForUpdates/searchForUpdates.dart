import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SearchForUpdates extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchForUpdatesState();
  }
}

class SearchForUpdatesState extends State<SearchForUpdates> {
  ScaffoldState scaffold;

  static bool getVersionLoaded = false;
  static bool fetchVersionLoaded = false;
  bool isLoading;

  var _version = "";
  var _currentVersion = "";

  final String apiUrl = "https://soundboard-version.herokuapp.com/api/version";

  @override
  void initState() {
    isLoading = true;
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
      return "KEINE INTERNETVERBINDUNG.";
    }
  }

  SearchForUpdatesState() {
    getVersion().then((value) => setState(() {
          _version = value;
          getVersionLoaded = true;
        }));
    fetchVersion().then((value) => setState(() {
          _currentVersion = value;
          fetchVersionLoaded = true;
          isLoading = false;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    children: <Widget>[
                      Text("Deine installierte Version: " + _version),
                      Text("Die aktuellste Version: " + _currentVersion),
                    ],
                  ),
                )),
    );
  }
}
