// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:german_meme_soundboard/components/soundboards/soundButton.dart';

class Montanablack extends StatelessWidget {
  // Sounds
  final String aha = 'aha.mp3';
  final String bestSkin = 'bestskin.mp3';
  final String boosterPops = 'boosterpops.mp3';
  final String sunsLaughing = 'sunslaughing.mp3';
  final String honorTaken = 'honortaken.mp3';
  final String iamTim = 'iamtim.mp3';
  final String jippie = 'jippie.mp3';
  final String laugh = 'laugh.mp3';
  final String manno = 'manno.mp3';
  final String momCall = 'momcall.mp3';
  final String omg = 'omg.mp3';
  final String omgCasino = 'omgc.mp3';
  final String freshAir = 'freshair.mp3';
  final String rido = 'rido.mp3';
  final String autonomousExplaining = 'autonomous.mp3';
  final String spongebob = 'spongebob.mp3';
  final String cheers = 'cheers.mp3';
  final String creatorCode = 'creatercode.mp3';
  final String iq300 = '300iq.mp3';
  final String moinmoin = 'moinmoin.mp3';
  final String bambam = 'bambam.mp3';
  final String dinkel = 'dinkel.mp3';
  final String bigGGnot = 'bigggnot.mp3';
  final String fish = 'fish.mp3';
  final String ikue = 'ikissureyes.mp3';
  final String kanacke = 'kanacke.mp3';
  final String cheese = 'cheese.mp3';
  final String uknowhim = 'uknowhim.mp3';
  final String mehmet = 'mehmet.mp3';
  final String gotMessi = 'messi.mp3';
  final String nosebleed = 'nosebleed.mp3';
  final String obenInnaSued = 'obeninnasued.mp3';
  final String rambazamba = 'rambazamba.mp3';
  final String fuckOff = 'fuckOff.mp3';
  final String firstWin = 'firstWin.mp3';
  final String onTheRoad = 'onTheRoadAgain.mp3';
  final String verliebt = 'Verliebt.mp3';
  final String werBistDuDenn = 'WerBistDuDenn.mp3';
  final String sayMyName = 'sayMyName.mp3';
  final String manMussNichtAlles = 'ManMussNichtAllesVerstehen.mp3';
  final String hey = 'heyy.mp3';
  final String ne = 'ne.mp3';
  final String hmm = 'hmm.mp3';
  final String dasGehtKlar = 'dasGehtKlar.mp3';
  final String lambo = 'Lambo.mp3';
  final String wichtigerAlsNeRolex = 'wichtigerAlsNeRolex.mp3';
  final String derNaechsteSchritt = 'derNaechsteSchritt.mp3';
  final String minuten24 = '24Minuten.mp3';
  final String schlafrhythmus = 'schlafrhythmus.mp3';
  final String kommisar = 'kommisarMonte.mp3';
  final String realtalk = 'realtalk.mp3';
  final String kommtAuchMalWasAnderes =
      "kommtAuchMalWasAnderesAusserFortnite.mp3";

  final String mon = 'montanablack';
  final String y = "youtuber";

  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Montanablack Sounds"),
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
                        text: 'Aha',
                        path: aha,
                        type: mon,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Bester Skin',
                        path: bestSkin,
                        type: mon,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Booster knallt',
                        path: boosterPops,
                        type: mon,
                        sType: y,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Die Sonne lacht',
                          path: sunsLaughing,
                          type: mon,
                          sType: y),
                      SoundButton(
                        text: 'Ehre genommen',
                        path: honorTaken,
                        type: mon,
                        sType: y,
                      ),
                      SoundButton(
                          text: 'Ich bin\'s Tim',
                          path: iamTim,
                          type: mon,
                          sType: y),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Jippie!', path: jippie, type: mon, sType: y),
                      SoundButton(
                          text: 'Lache', path: laugh, type: mon, sType: y),
                      SoundButton(
                          text: 'Manno!', path: manno, type: mon, sType: y),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Mutter anrufen',
                          path: momCall,
                          type: mon,
                          sType: y),
                      SoundButton(text: 'OMG', path: omg, type: mon, sType: y),
                      SoundButton(
                          text: 'OMG (Casino)',
                          path: omgCasino,
                          type: mon,
                          sType: y),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Rausgeholt',
                          path: freshAir,
                          type: mon,
                          sType: y),
                      SoundButton(
                          text: 'Rein in die Olga',
                          path: rido,
                          type: mon,
                          sType: y),
                      SoundButton(
                          text: 'Selbstständig',
                          path: autonomousExplaining,
                          type: mon,
                          sType: y)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Thaddäus',
                          path: spongebob,
                          type: mon,
                          sType: y),
                      SoundButton(
                          text: 'Stößchen', path: cheers, type: mon, sType: y),
                      SoundButton(
                          text: 'Creator Code',
                          path: creatorCode,
                          type: mon,
                          sType: y),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Frauen-Realtalk',
                          path: iq300,
                          type: mon,
                          sType: y),
                      SoundButton(
                          text: 'Moin Moin',
                          path: moinmoin,
                          type: mon,
                          sType: y),
                      SoundButton(
                          text: 'Bam Bam', path: bambam, type: mon, sType: y),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Dinkel', path: dinkel, type: mon, sType: y),
                      SoundButton(
                          text: 'Fische', path: fish, type: mon, sType: y),
                      SoundButton(
                          text: 'Augen', path: ikue, type: mon, sType: y),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Kanacke', path: kanacke, type: mon, sType: y),
                      SoundButton(
                          text: 'Käsebrötchen',
                          path: cheese,
                          type: mon,
                          sType: y),
                      SoundButton(
                          text: 'Man kennt ihn',
                          path: uknowhim,
                          type: mon,
                          sType: y),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Mehmet', path: mehmet, type: mon, sType: y),
                      SoundButton(
                          text: 'Messi', path: gotMessi, type: mon, sType: y),
                      SoundButton(
                          text: 'Nasenbluten',
                          path: nosebleed,
                          type: mon,
                          sType: y),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Oben inna Süd',
                          path: obenInnaSued,
                          type: mon,
                          sType: y),
                      SoundButton(
                          text: 'Rambazamba',
                          path: rambazamba,
                          type: mon,
                          sType: y),
                      SoundButton(
                        text: 'Verpiss dich!',
                        path: fuckOff,
                        type: mon,
                        sType: y,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'On the Road',
                          path: onTheRoad,
                          type: mon,
                          sType: y),
                      SoundButton(
                        text: 'Erster Sieg',
                        path: firstWin,
                        type: mon,
                        sType: y,
                      ),
                      SoundButton(
                        text: 'Verliebt',
                        path: verliebt,
                        type: mon,
                        sType: y,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Say My Name',
                        path: sayMyName,
                        type: mon,
                        sType: y,
                      ),
                      SoundButton(
                          text: 'Wer bist du denn?',
                          path: werBistDuDenn,
                          type: mon,
                          sType: y),
                      SoundButton(
                          text: 'Man muss nicht ...',
                          path: manMussNichtAlles,
                          type: mon,
                          sType: y),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Heeyyy!',
                        path: hey,
                        type: mon,
                        sType: y,
                      ),
                      SoundButton(
                          text: 'Kommisar',
                          path: kommisar,
                          type: mon,
                          sType: y),
                      SoundButton(text: 'Ne', path: ne, type: mon, sType: y)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Hmm...',
                        path: hmm,
                        type: mon,
                        sType: y,
                      ),
                      SoundButton(
                          text: 'Das geht klar',
                          path: dasGehtKlar,
                          type: mon,
                          sType: y),
                      SoundButton(
                        text: 'Lambo',
                        path: lambo,
                        type: mon,
                        sType: y,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Wichtiger als \'ne Rolex',
                        path: wichtigerAlsNeRolex,
                        type: mon,
                        sType: y,
                      ),
                      SoundButton(
                          text: 'Nächster Schritt',
                          path: derNaechsteSchritt,
                          type: mon,
                          sType: y),
                      SoundButton(
                        text: '24 Minuten Realtalk',
                        path: minuten24,
                        type: mon,
                        sType: y,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Schlafrhythmus',
                          path: schlafrhythmus,
                          type: mon,
                          sType: y),
                      SoundButton(
                          text: 'Absoluter Realtalk',
                          path: realtalk,
                          type: mon,
                          sType: y),
                      SoundButton(
                          text: 'Kommt auch mal was anderes?',
                          path: kommtAuchMalWasAnderes,
                          type: mon,
                          sType: y)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
