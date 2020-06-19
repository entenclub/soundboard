// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:german_meme_soundboard/components/soundboards/soundButton.dart';

class Knossi extends StatelessWidget {
  // Sounds
  final String rtl = 'rtl.mp3';
  final String goenn = 'goenn.mp3';
  final String tuerkGes = 'Gesang.mp3';
  final String albinoTuerke = 'albinoTuerke.mp3';
  final String jasmin = 'jasmin.mp3';
  final String auf50euro = 'auf50euro.mp3';
  final String scheisse = 'scheisse.mp3';
  final String freudesschrei = 'Freudesschrei.mp3';
  final String alge = 'Alge.mp3';

  final String kno = "knossi";
  final String y = "youtuber";

  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Knossi"),
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
                      SoundButton(text: 'RTL', path: rtl, type: kno, sType: y),
                      SoundButton(
                        text: 'Jasmin',
                        path: jasmin,
                        type: kno, sType: y,
                      ),
                      SoundButton(
                        text: 'Auf 50€',
                        path: auf50euro,
                        type: kno, sType: y,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(text: 'Gönn!', path: goenn, type: kno, sType: y),
                      SoundButton(
                          text: 'Türk. Gesang', path: tuerkGes, type: kno, sType: y),
                      SoundButton(
                          text: 'Albino Türke', path: albinoTuerke, type: kno, sType: y),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Scheiße',
                        path: scheisse,
                        type: kno, sType: y,
                      ),
                      SoundButton(text: 'Alge', path: alge, type: kno, sType: y),
                      SoundButton(
                          text: 'Freudesschrei',
                          path: freudesschrei,
                          type: kno, sType: y),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
