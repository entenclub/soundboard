// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:german_meme_soundboard/components/soundboards/soundButton.dart';

class Einsachtsieben extends StatelessWidget {
  // Sounds
  final String alleguckenzu = "alleguckenzu.mp3";
  final String dasistbayern = "dasistbayern.mp3";
  final String derbusistda = "derbusistda.mp3";
  final String donuts = "donuts.mp3";
  final String ganzruhig = "ganzruhig.mp3";
  final String giraffenweisheit = "giraffenweisheit.mp3";
  final String gzuzlache = "gzuzlache.mp3";
  final String gzuzlache_1 = "gzuzlache_1.mp3";
  final String hamsterkauefe = "hamsterkauefe.mp3";
  final String ichgehschlafen = "ichgehschlafen.mp3";
  final String omagruessen = "omagruessen.mp3";
  final String realtalk = "realtalk.mp3";
  final String sokannichnichtarbeiten = "sokannichnichtarbeiten.mp3";
  final String waszusmoken = "waszusmoken.mp3";
  final String weisheit = "weisheit.mp3";
  final String woistmeinpfeffer = "woistmeinpfeffer.mp3";
  final String woooooho = "woooooho.mp3";
  final String wunderbarergesang_1 = "wunderbarergesang_1.mp3";
  final String wunderbarergesang_2 = "wunderbarergesang_2.mp3";

  final String einsa = "einsachtsieben";
  final String m = "musiker";

  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("187 Sounds"),
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
                        text: 'Alle gucken zu',
                        path: alleguckenzu,
                        type: einsa,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Das ist Bayern',
                        path: dasistbayern,
                        type: einsa,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Der Bus ist da',
                        path: derbusistda,
                        type: einsa,
                        sType: m,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Donuts',
                        path: donuts,
                        type: einsa,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Ganz ruhig',
                        path: ganzruhig,
                        type: einsa,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Giraffe',
                        path: giraffenweisheit,
                        type: einsa,
                        sType: m,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Gzuz: Lache 1',
                        path: gzuzlache,
                        type: einsa,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Gzuz: Lache 2',
                        path: gzuzlache_1,
                        type: einsa,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Hamsterkäufe',
                        path: giraffenweisheit,
                        type: einsa,
                        sType: m,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Ich geh schlafen',
                        path: ichgehschlafen,
                        type: einsa,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Oma grüßen',
                        path: omagruessen,
                        type: einsa,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Realtalk',
                        path: realtalk,
                        type: einsa,
                        sType: m,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Nicht arbeiten',
                        path: sokannichnichtarbeiten,
                        type: einsa,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Was zu smoken',
                        path: waszusmoken,
                        type: einsa,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Weisheit',
                        path: weisheit,
                        type: einsa,
                        sType: m,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Pfeffer',
                        path: woistmeinpfeffer,
                        type: einsa,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Woooho',
                        path: woooooho,
                        type: einsa,
                        sType: m,
                      ),
                      SoundButton(
                        text: 'Gzuz: Gesang 1',
                        path: wunderbarergesang_1,
                        type: einsa,
                        sType: m,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Gzuz: Gesang 2',
                        path: wunderbarergesang_2,
                        type: einsa,
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
