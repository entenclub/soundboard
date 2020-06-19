import 'package:flutter/material.dart';
import 'package:german_meme_soundboard/components/soundboards/soundButton.dart';

class Standartskill extends StatelessWidget {
  final String dichterNebel = 'dichterNebel.mp3';
  final String epischerSieg = 'epischerSieg.mp3';
  final String paulBerger = "paulberger.mp3";
  final String nebelix = "nebelix.mp3";

  final sta = 'standartskill';

  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Standart Skill"),
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
                          text: 'Dichter Nebel', path: dichterNebel, type: sta),
                      SoundButton(
                          text: 'Siegesmusik', path: epischerSieg, type: sta),
                      SoundButton(
                          text: 'Paulberger', path: paulBerger, type: sta),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SoundButton(text: 'Nebelix', path: nebelix, type: sta),
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
