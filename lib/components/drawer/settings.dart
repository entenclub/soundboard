// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

// 📦 Package imports:
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_whatsnew/flutter_whatsnew.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';

import 'package:german_meme_soundboard/components/drawer/drawer.dart';
import 'package:german_meme_soundboard/components/searchForUpdates/searchForUpdates.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() {
    return _SettingsState();
  }
}

class _SettingsState extends State<Settings> {
  String _version = "";

  final double textScaleFactor = 1.0;

  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

  _SettingsState() {
    getVersion().then(
      (val) => setState(
        () {
          _version = val;
        },
      ),
    );
  }

  Future<String> getVersion() async {
    return await rootBundle.loadString("assets/res/version.txt");
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
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Version'),
            trailing: Text(_version),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GredientButton(
                colors: [Colors.purple, Colors.deepPurple],
                title: "Versionsübersicht",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WhatsNewPage.changelog(
                        title: Text(
                          "Versionsübersicht",
                          textScaleFactor: textScaleFactor,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        buttonText: Text(
                          'Schließen',
                          textScaleFactor: textScaleFactor,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      fullscreenDialog: true,
                    ),
                  );
                },
              ),
              GredientButton(
                colors: [Colors.lightBlueAccent, Colors.blue],
                title: "Nach Updates suchen",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchForUpdates(),
                    ),
                  );
                },
              ),
            ],
          )

          //Divider(),
        ],
      ),
    );
  }
}
