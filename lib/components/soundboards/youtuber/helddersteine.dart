// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:german_meme_soundboard/components/soundboards/soundButton.dart';

class Helddersteine extends StatelessWidget {
  // Sounds
  final String aufkeinenfall = "aufkeinenfall.mp3";
  final String diebeschreibung = "diebeschreibung.mp3";
  final String diebeschreibungzwei = "diebeschreibungzwei.mp3";
  final String echtheitszertifikat = "echtheitszertifikat.mp3";
  final String einfachnein = "einfachnein.mp3";
  final String grossesteil = "grossesteil.mp3";
  final String hartandergrenze = "hartandergrenze.mp3";
  final String katastrophe = "katastrophe.mp3";
  final String meinefreunde = "meinefreunde.mp3";
  final String natuerlich = "natuerlich.mp3";
  final String schautmal = "schautmal.mp3";
  final String schiefgegangen = "schiefgegangen.mp3";
  final String spalt = "spalt.mp3";
  final String weichundrund = "weichundrund.mp3";
  final String weltseidmirgegruesst = "weltseidmirgegruesst.mp3";
  final String witzig = "witzig.mp3";
  final String wolltsnichtmachen = "wolltsnichtmachen.mp3";

  final String held = "helddersteine";
  final String y = "youtuber";

  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Held der Steine Sounds"),
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
                        text: 'Auf keinen Fall',
                        path: aufkeinenfall,
                        type: held,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Die Beschreibung',
                        path: diebeschreibung,
                        type: held,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Die Beschreibung II',
                        path: diebeschreibungzwei,
                        type: held,
                        sType: y,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Echtheitszertifikat',
                        path: echtheitszertifikat,
                        type: held,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Einfach nein',
                        path: einfachnein,
                        type: held,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Großes Teil',
                        path: grossesteil,
                        type: held,
                        sType: y,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Hart an der Grenze',
                        path: hartandergrenze,
                        type: held,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Katastrophe',
                        path: katastrophe,
                        type: held,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Meine Freunde',
                        path: meinefreunde,
                        type: held,
                        sType: y,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Natürlich',
                        path: natuerlich,
                        type: held,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Schaut mal',
                        path: schautmal,
                        type: held,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Schiefgegangen',
                        path: schiefgegangen,
                        type: held,
                        sType: y,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Spalt',
                        path: spalt,
                        type: held,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Weich & rund',
                        path: weichundrund,
                        type: held,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Begrüßung',
                        path: weltseidmirgegruesst,
                        type: held,
                        sType: y,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Witzig',
                        path: witzig,
                        type: held,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Wollt\'s nicht machen',
                        path: wolltsnichtmachen,
                        type: held,
                        sType: y,
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
