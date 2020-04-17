import 'package:flutter/material.dart';

class Stanni extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "Standart Skill",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
          ),
        ),
      ),
      ClipOval(
      child: Image.asset("assets/icon/stanni.png", height: 250, fit: BoxFit.cover),
      ),
      Container(
          child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: Text(
            "Standart Skill (bürgerlich: Philipp Geißler) ist ein deutscher Gaming-Youtuber. "  + 
            "Er spielt primär die Videospiele GTA & Fortnite, zu denen er bis dato je ein Lied veröffentlich hat, die insgesamt weit über 25 Millionen Aufrufe auf Youtube haben. " + 
            "Außerdem ist Standart Skill als \"Bürgermeister von Tilted Towers\" bekannt.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w300,
)))))]);}}