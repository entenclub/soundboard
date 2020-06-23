// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:german_meme_soundboard/components/soundboards/soundButton.dart';

class YoutuberSoundboard extends StatelessWidget {

  // Names
  final String ste = 'steel';
  final String jus = 'justin';
  final String ung = 'ungespielt';
  final String sta = 'standartskill';
  final String kno = 'knossi';
  final String mon = 'monte';

  Widget build(BuildContext context) {
    return (Scaffold(appBar: AppBar(title: Text("Youtuber Sounds"),),
      body: ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      'Knossi',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      'Standart Skill',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      'Ungespielt',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      'Justin',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Text(
                      'Steel',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    SoundButton(text: '', path: '', type: ste)
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    )));
  }
}
