// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

// 📦 Package imports:
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Einstellungen"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Thema"),
            trailing: IconButton(
              icon: Theme.of(context).brightness == Brightness.light
                  ? FaIcon(FontAwesomeIcons.solidSun)
                  : FaIcon(FontAwesomeIcons.solidMoon),
              onPressed: changeBrightness,
              //iconSize: 20.0,
            ),
          ),
          ListTile(
            title: Text('Version'),
          ),
        ],
      ),
    );
  }
}
