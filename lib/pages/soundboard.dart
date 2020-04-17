import 'package:flutter/material.dart';
import 'soundButton.dart';

class Soundboard extends StatelessWidget {

  // monte
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
  final String kommtAuchMalWasAnderes = "kommtAuchMalWasAnderesAusserFortnite.mp3";

  // knossi
  final String rtl = 'rtl.mp3';
  final String goenn = 'goenn.mp3';
  final String tuerkGes = 'Gesang.mp3';
  final String albinoTuerke = 'albinoTuerke.mp3';
  final String jasmin = 'jasmin.mp3';
  final String auf50euro = 'auf50euro.mp3';
  final String scheisse = 'scheisse.mp3';
  final String freudesschrei = 'Freudesschrei.mp3';
  final String alge = 'Alge.mp3';

  // stanni
  final String dichterNebel = 'dichterNebel.mp3'; 
  final String epischerSieg = 'epischerSieg.mp3';
  final String paulBerger = "paulberger.mp3";
  final String nebelix = "nebelix.mp3";

  // unge
  final String tigerTonne = 'tigerTonne.mp3';
  final String patiPatu = 'PatiPatu.mp3';
  final String milchIstGift = 'milchIstGift.mp3';

  // justin
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

  Widget build(BuildContext context) {
    
    return (
        ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                   color: Colors.black,
                    borderRadius:  BorderRadius.circular(7)),
                  child: 
                  Text(
                  'Montanablack',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                )),
                Row(
                  children: <Widget>[
                    SoundButton(text: 'Aha', path: aha, type: 'm'),
                    SoundButton(text: 'Bester Skin', path: bestSkin, type: 'm'),
                    SoundButton(
                        text: 'Booster knallt', path: boosterPops, type: 'm')
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(
                        text: 'Die Sonne lacht', path: sunsLaughing, type: 'm'),
                    SoundButton(
                      text: 'Ehre genommen',
                      path: honorTaken,
                      type: 'm',
                    ),
                    SoundButton(
                        text: 'Ich bin\'s Tim', path: iamTim, type: 'm'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(text: 'Jippie!', path: jippie, type: 'm'),
                    SoundButton(text: 'Lache', path: laugh, type: 'm'),
                    SoundButton(text: 'Manno!', path: manno, type: 'm'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(
                        text: 'Mutter anrufen', path: momCall, type: 'm'),
                    SoundButton(text: 'OMG', path: omg, type: 'm'),
                    SoundButton(
                        text: 'OMG (Casino)', path: omgCasino, type: 'm'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(text: 'Rausgeholt', path: freshAir, type: 'm'),
                    SoundButton(
                        text: 'Rein in die Olga', path: rido, type: 'm'),
                    SoundButton(
                        text: 'Selbstständig',
                        path: autonomousExplaining,
                        type: 'm')
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(text: 'Thaddäus', path: spongebob, type: 'm'),
                    SoundButton(text: 'Stößchen', path: cheers, type: 'm'),
                    SoundButton(
                        text: 'Creator Code',
                        path: creatorCode,
                        type: 'm'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(
                        text: 'Frauen-Realtalk', path: iq300, type: 'm'),
                    SoundButton(text: 'Moin Moin', path: moinmoin, type: 'm'),
                    SoundButton(text: 'Bam Bam', path: bambam, type: 'm'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(text: 'Dinkel', path: dinkel, type: 'm'),
                    SoundButton(text: 'Fische', path: fish, type: 'm'),
                    SoundButton(text: 'Augen', path: ikue, type: 'm'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(text: 'Kanacke', path: kanacke, type: 'm'),
                    SoundButton(
                        text: 'Käsebrötchen', path: cheese, type: 'm'),
                    SoundButton(
                        text: 'Man kennt ihn', path: uknowhim, type: 'm'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(text: 'Mehmet', path: mehmet, type: 'm'),
                    SoundButton(text: 'Messi', path: gotMessi, type: 'm'),
                    SoundButton(
                        text: 'Nasenbluten', path: nosebleed, type: 'm'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(
                        text: 'Oben inna Süd', path: obenInnaSued, type: 'm'),
                    SoundButton(
                        text: 'Rambazamba', path: rambazamba, type: 'm'),
                    SoundButton(
                      text: 'Verpiss dich!',
                      path: fuckOff,
                      type: 'm',
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(
                        text: 'On the Road', path: onTheRoad, type: 'm'),
                    SoundButton(
                      text: 'Erster Sieg',
                      path: firstWin,
                      type: 'm',  
                    ), 
                    SoundButton(text: 'Verliebt', path: verliebt, type: 'm',)
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(text: 'Say My Name', path: sayMyName, type: 'm',),
                    SoundButton(text: 'Wer bist du denn?', path: werBistDuDenn, type: 'm'),
                    SoundButton(text: 'Man muss nicht ...', path: manMussNichtAlles, type: 'm'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(text: 'Heeyyy!', path: hey, type: 'm',),
                    SoundButton(text: 'Kommisar', path: kommisar, type: 'm'),
                    SoundButton(text: 'Ne', path: ne, type: 'm')
                  ],
                ),
                Row(
                  children: <Widget>[
                    SoundButton(text: 'Hmm...', path: hmm, type: 'm',),
                    SoundButton(text: 'Das geht klar', path: dasGehtKlar, type: 'm'),
                    SoundButton(text: 'Lambo', path: lambo, type: 'm',)
                  ],
                ),
                Row(children: <Widget>[
                  SoundButton(text: 'Wichtiger als \'ne Rolex', path: wichtigerAlsNeRolex, type: 'm',),
                  SoundButton(text: 'Nächste Schritt', path: derNaechsteSchritt, type: 'm'),
                  SoundButton(text: '24 Minuten Realtalk', path: minuten24, type: 'm',)
                ]),
                Row(
                  children: <Widget>[
                    SoundButton(text: 'Schlafrhythmus', path: schlafrhythmus, type: 'm'),
                    SoundButton(text: 'Absoluter Realtalk', path: realtalk, type: 'm'),
                    SoundButton(text: 'Kommt auch mal was anderes?', path: kommtAuchMalWasAnderes ,type: 'm' )
                  ],
                ),

                // knossi
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: 
                  Container(
                   padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                   color: Colors.yellow,
                    borderRadius:  BorderRadius.circular(7)),
                  child: Text(
                    'Knossi',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ),
                Row(
                  children: <Widget>[
                    SoundButton(text: 'RTL', path: rtl, type: 'k'),
                    SoundButton(
                      text: 'Jasmin',
                      path: jasmin,
                      type: 'k',
                    ),
                    SoundButton(
                      text: 'Auf 50€',
                      path: auf50euro,
                      type: 'k',
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                   SoundButton(text: 'Gönn!', path: goenn, type: 'k'),
                    SoundButton(text: 'Türk. Gesang', path: tuerkGes, type: 'k'),
                    SoundButton(text: 'Albino Türke', path: albinoTuerke, type: 'k')
                  ]),

                Row(children: <Widget>[
                  SoundButton(text: 'Scheiße', path: scheisse, type: 'k',),
                  SoundButton(text: 'Alge', path: alge, type: 'k'),
                  SoundButton(text: 'Freudesschrei', path: freudesschrei, type: 'k')
                ]),
                 
                 Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius:  BorderRadius.circular(7)),
                    child: Text(
                    'Standart Skill',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                  ))),

                Row(
                  children: <Widget>[
                    SoundButton(text: 'Dichter Nebel', path: dichterNebel, type: 's'),
                    SoundButton(text: 'Siegesmusik', path: epischerSieg, type: 's'),
                    SoundButton(text: 'Paulberger', path: paulBerger, type: 's')
                  ]),

                Row(children: <Widget>[SoundButton(text: 'Nebelix', path: nebelix, type: 's')]),

                Padding(padding: EdgeInsets.only(top: 15),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius:  BorderRadius.circular(7)),
                  child: Text('Ungespielt', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white))),
                ),
                Row(children: <Widget>[
                  SoundButton(text: 'Tiger wiegt \'ne Tonne', path: tigerTonne, type: 'u'),
                  SoundButton(text: 'Pati Patu', path: patiPatu, type: 'u'),
                  SoundButton(text: 'Milch ist Gift', path: milchIstGift, type: 'u')
                ]),
              
              Padding(padding: EdgeInsets.only(top: 15), child:
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius:  BorderRadius.circular(7)), 
                child: Text('Justin', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)))),
              
              Row(children: <Widget>[
                SoundButton(text: 'Sieht man das', path: siehtManDas, type: 'j'),
                SoundButton(text: 'Tägliche Boss', path: derTaeglicheBoss, type: 'j'),
                SoundButton(text: 'Lego-Boss', path: derLegoBoss, type: 'j')
              ]),
              
              Row(children: <Widget>[
                SoundButton(text: 'Allergische Boss', path: derAllergischeBoss, type: 'j'),
                SoundButton(text: 'Reaktions-Boss', path: derReaktionsBoss, type: 'j'),
                SoundButton(text: 'Eisboss', path: derEisBoss, type: 'j')
              ]),
              
              Row(children: <Widget>[
                SoundButton(text: 'Relevante Fashionboss', path: derRelevanteFashionBoss, type: 'j'),
                SoundButton(text: 'Konsequente Boss', path: derKonsequenteBoss, type: 'j'),
                SoundButton(text: 'Finanzboss', path: derFinanzBoss, type: 'j'),
              ]),
              
              Row(children: <Widget>[
                SoundButton(text: 'Lache', path: justinLache, type: 'j'),
                SoundButton(text: 'Zehner', path: zehner, type: 'j'),
                SoundButton(text: 'No Front', path: noFront, type: 'j')
              ]),

              Row(children: <Widget>[
                SoundButton(text: 'So Nicht', path: soNicht, type: 'j')
              ],)
])))]));}} 
