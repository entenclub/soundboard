// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:german_meme_soundboard/components/soundboards/soundButton.dart';

class Shindy extends StatelessWidget {
  // Sounds
  final String ichglaubenicht = "ichglaubenicht.mp3";
  final String ichglaubenichtzwei = "ichglaubenicht2.mp3";
  final String ichsageinensatz = "ichsageinensatz.mp3";
  final String machnochmal = "mashallahmachnochmal.mp3";
  final String spotifymussshindyueberweisen =
      "spotifymussshindyueberweisen.mp3";

  final String shin = "shindy";
  final String m = "musiker";

  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Shindy Sounds"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Ich glaube nicht 1',
                        path: ichglaubenicht,
                        type: shin,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Ich glaube nicht 2',
                        path: ichglaubenichtzwei,
                        type: shin,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Ich sag einen Satz',
                        path: ichsageinensatz,
                        type: shin,
                        sType: m,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Mach nochmal',
                        path: machnochmal,
                        type: shin,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Spotify muss überweisen',
                        path: spotifymussshindyueberweisen,
                        type: shin,
                        sType: m,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
