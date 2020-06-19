import 'package:flutter/material.dart';
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

  final String mon = 'monte';

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
                      SoundButton(text: "Aha", path: aha, type: mon)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(text: 'Aha', path: aha, type: mon),
                      SoundButton(
                          text: 'Bester Skin', path: bestSkin, type: mon),
                      SoundButton(
                          text: 'Booster knallt', path: boosterPops, type: mon)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Die Sonne lacht',
                          path: sunsLaughing,
                          type: mon),
                      SoundButton(
                        text: 'Ehre genommen',
                        path: honorTaken,
                        type: mon,
                      ),
                      SoundButton(
                          text: 'Ich bin\'s Tim', path: iamTim, type: mon),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(text: 'Jippie!', path: jippie, type: mon),
                      SoundButton(text: 'Lache', path: laugh, type: mon),
                      SoundButton(text: 'Manno!', path: manno, type: mon),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Mutter anrufen', path: momCall, type: mon),
                      SoundButton(text: 'OMG', path: omg, type: mon),
                      SoundButton(
                          text: 'OMG (Casino)', path: omgCasino, type: mon),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Rausgeholt', path: freshAir, type: mon),
                      SoundButton(
                          text: 'Rein in die Olga', path: rido, type: mon),
                      SoundButton(
                          text: 'Selbstständig',
                          path: autonomousExplaining,
                          type: mon)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(text: 'Thaddäus', path: spongebob, type: mon),
                      SoundButton(text: 'Stößchen', path: cheers, type: mon),
                      SoundButton(
                          text: 'Creator Code', path: creatorCode, type: mon),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Frauen-Realtalk', path: iq300, type: mon),
                      SoundButton(text: 'Moin Moin', path: moinmoin, type: mon),
                      SoundButton(text: 'Bam Bam', path: bambam, type: mon),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(text: 'Dinkel', path: dinkel, type: mon),
                      SoundButton(text: 'Fische', path: fish, type: mon),
                      SoundButton(text: 'Augen', path: ikue, type: mon),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(text: 'Kanacke', path: kanacke, type: mon),
                      SoundButton(
                          text: 'Käsebrötchen', path: cheese, type: mon),
                      SoundButton(
                          text: 'Man kennt ihn', path: uknowhim, type: mon),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(text: 'Mehmet', path: mehmet, type: mon),
                      SoundButton(text: 'Messi', path: gotMessi, type: mon),
                      SoundButton(
                          text: 'Nasenbluten', path: nosebleed, type: mon),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Oben inna Süd', path: obenInnaSued, type: mon),
                      SoundButton(
                          text: 'Rambazamba', path: rambazamba, type: mon),
                      SoundButton(
                        text: 'Verpiss dich!',
                        path: fuckOff,
                        type: mon,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'On the Road', path: onTheRoad, type: mon),
                      SoundButton(
                        text: 'Erster Sieg',
                        path: firstWin,
                        type: mon,
                      ),
                      SoundButton(
                        text: 'Verliebt',
                        path: verliebt,
                        type: mon,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Say My Name',
                        path: sayMyName,
                        type: mon,
                      ),
                      SoundButton(
                          text: 'Wer bist du denn?',
                          path: werBistDuDenn,
                          type: mon),
                      SoundButton(
                          text: 'Man muss nicht ...',
                          path: manMussNichtAlles,
                          type: mon),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Heeyyy!',
                        path: hey,
                        type: mon,
                      ),
                      SoundButton(text: 'Kommisar', path: kommisar, type: mon),
                      SoundButton(text: 'Ne', path: ne, type: mon)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Hmm...',
                        path: hmm,
                        type: mon,
                      ),
                      SoundButton(
                          text: 'Das geht klar', path: dasGehtKlar, type: mon),
                      SoundButton(
                        text: 'Lambo',
                        path: lambo,
                        type: mon,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                        text: 'Wichtiger als \'ne Rolex',
                        path: wichtigerAlsNeRolex,
                        type: mon,
                      ),
                      SoundButton(
                          text: 'Nächster Schritt',
                          path: derNaechsteSchritt,
                          type: mon),
                      SoundButton(
                        text: '24 Minuten Realtalk',
                        path: minuten24,
                        type: mon,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(
                          text: 'Schlafrhythmus',
                          path: schlafrhythmus,
                          type: mon),
                      SoundButton(
                          text: 'Absoluter Realtalk',
                          path: realtalk,
                          type: mon),
                      SoundButton(
                          text: 'Kommt auch mal was anderes?',
                          path: kommtAuchMalWasAnderes,
                          type: mon)
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
