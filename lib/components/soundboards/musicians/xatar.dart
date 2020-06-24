import 'package:flutter/material.dart';
import 'package:german_meme_soundboard/components/soundboards/soundButton.dart';

class Xatar extends StatelessWidget {
  final String esistzuwild = "esistzuwild.mp3";
  final String hrrrrrr = "hrrrrrr.mp3";
  final String koeftespiess = "koeftespiess.mp3";
  final String waslaeuft = "waslaeuft.mp3";
  final String waslaeuft_1 = "waslaeuft_1.mp3";

  final String xat = "xatar";
  final String m = "musiker";

  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Xatar Sounds"),
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
                        text: 'Zu wild',
                        path: esistzuwild,
                        type: xat,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Hrrrrrr',
                        path: hrrrrrr,
                        type: xat,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Köftespieß',
                        path: koeftespiess,
                        type: xat,
                        sType: m,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Was läuft 1',
                        path: waslaeuft,
                        type: xat,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Was läuft 2',
                        path: waslaeuft_1,
                        type: xat,
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
