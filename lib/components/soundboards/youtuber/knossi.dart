import 'package:flutter/material.dart';
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

  final String kno = 'knossi';

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
                      SoundButton(text: 'RTL', path: rtl, type: kno),
                      SoundButton(
                        text: 'Jasmin',
                        path: jasmin,
                        type: kno,
                      ),
                      SoundButton(
                        text: 'Auf 50€',
                        path: auf50euro,
                        type: kno,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(text: 'Gönn!', path: goenn, type: kno),
                      SoundButton(
                          text: 'Türk. Gesang', path: tuerkGes, type: kno),
                      SoundButton(
                          text: 'Albino Türke', path: albinoTuerke, type: kno),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Scheiße',
                        path: scheisse,
                        type: kno,
                      ),
                      SoundButton(text: 'Alge', path: alge, type: kno),
                      SoundButton(
                          text: 'Freudesschrei',
                          path: freudesschrei,
                          type: kno),
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
