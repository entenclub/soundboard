import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show Scaffold, AppBar, Theme, Colors, MaterialPageRoute;
import 'dart:async';

import 'package:flutter_spinkit/flutter_spinkit.dart' show SpinKitCircle;
import 'package:animated_text_kit/animated_text_kit.dart' show TextLiquidFill;

import 'package:german_meme_soundboard/components/searchForUpdates/secondScreen.dart';

class SearchForUpdates extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchForUpdatesState();
  }
}

class SearchForUpdatesState extends State<SearchForUpdates> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SecondScreen(),
      ),
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Moin"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SpinKitCircle(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black
                : Colors.white,
          ),
          TextLiquidFill(
            text: 'loading',
            waveColor: Colors.blueAccent,
            boxBackgroundColor: Theme.of(context).brightness == Brightness.light
                ? Color.fromRGBO(250, 250, 250, 1)
                : Color.fromRGBO(48, 48, 48, 1),
            loadDuration: Duration(milliseconds: 5000),
            boxHeight: 100.0,
            textStyle: TextStyle(fontSize: 40.0),
          ),
        ],
      ),
    );
  }
}
