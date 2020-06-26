// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:german_meme_soundboard/components/soundboards/soundButton.dart';

class Kollegah extends StatelessWidget {
  final String zweipersoenlichkeiten = "2persönlichkeit.mp3";
  final String dafuersteheich = "dafuersteheich.mp3";
  final String dasistalpha = "dasistalpha.mp3";
  final String witz1 = "pencelweniger.mp3";
  final String witz2 = "serbenwitz.mp3";

  final String kol = "kollegah";
  final String m = "musiker";

  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Kollegah Sounds"),
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
                        text: '2 Persönlichkeiten',
                        path: zweipersoenlichkeiten,
                        type: kol,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Das ist Alpha',
                        path: dasistalpha,
                        type: kol,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Dafür stehe ich',
                        path: dafuersteheich,
                        type: kol,
                        sType: m,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Serbenwitz',
                        path: witz2,
                        type: kol,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Pennsylvania',
                        path: witz1,
                        type: kol,
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
