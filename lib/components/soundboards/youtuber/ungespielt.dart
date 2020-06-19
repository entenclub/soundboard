import 'package:flutter/material.dart';
import 'package:german_meme_soundboard/components/soundboards/soundButton.dart';

class Ungespielt extends StatelessWidget {
  // Sounds
  final String tigerTonne = 'tigerTonne.mp3';
  final String patiPatu = 'PatiPatu.mp3';
  final String milchIstGift = 'milchIstGift.mp3';

  final String ung = "ungespielt";
  final String y = "youtuber";

  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Ungespielt"),
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
                        text: 'Tiger wiegt \'ne Tonne',
                        path: tigerTonne,
                        type: ung,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Pati Patu',
                        path: patiPatu,
                        type: ung,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Milch ist Gift',
                        path: milchIstGift,
                        type: ung,
                        sType: y,
                      ),
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
