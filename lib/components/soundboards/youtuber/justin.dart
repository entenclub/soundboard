import 'package:flutter/material.dart';
import 'package:german_meme_soundboard/components/soundboards/soundButton.dart';

class Justin extends StatelessWidget {
  // Sounds
  final String siehtManDas = 'siehtManDas.mp3';
  final String derTaeglicheBoss = 'derTaeglicheBoss.mp3';
  final String derLegoBoss = 'derLegoBoss.mp3';
  final String justinLache = 'justinLache.mp3';
  final String derAllergischeBoss = 'derAllergischeBoss.mp3';
  final String derReaktionsBoss = 'derReaktionsBoss.mp3';
  final String derEisBoss = 'derEisBoss.mp3';
  final String derRelevanteFashionBoss = 'derRelevanteFashionBoss.mp3';
  final String geburtsboss = 'Geburtsboss.mp3';
  final String derKonsequenteBoss = 'derKonsequenteBoss.mp3';
  final String derFinanzBoss = 'derFinanzBoss.mp3';
  final String zehner = "zehner.mp3";
  final String noFront = "noFront.mp3";
  final String soNicht = "soNicht.mp3";

  final String jus = 'justin';
  final String y = "youtuber";

  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Justin"),
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
                        text: 'Sieht man das',
                        path: siehtManDas,
                        type: jus,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Tägliche Boss',
                        path: derTaeglicheBoss,
                        type: jus,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Lego-Boss',
                        path: derLegoBoss,
                        type: jus,
                        sType: y,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Allergische Boss',
                        path: derAllergischeBoss,
                        type: jus,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Reaktions-Boss',
                        path: derReaktionsBoss,
                        type: jus,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Eisboss',
                        path: derEisBoss,
                        type: jus,
                        sType: y,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Relevante Fashionboss',
                        path: derRelevanteFashionBoss,
                        type: jus,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Konsequente Boss',
                        path: derKonsequenteBoss,
                        type: jus,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Finanzboss',
                        path: derFinanzBoss,
                        type: jus,
                        sType: y,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Lache',
                        path: justinLache,
                        type: jus,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Zehner',
                        path: zehner,
                        type: jus,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'No Front',
                        path: noFront,
                        type: jus,
                        sType: y,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'So Nicht',
                        path: soNicht,
                        type: jus,
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
