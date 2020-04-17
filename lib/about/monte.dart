import 'package:flutter/material.dart';

class Monte extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Center(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Text(
            "Montanablack",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
          ),
        ),
      ),
      ClipOval(child:Image.asset(
        "assets/icon/monte.png",
        width: 230, fit: BoxFit.cover
      )),
      Container(
          child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: Text(
            "Montanablack (geboren in Buxtehude (oben inna Süd); bürgerlich: Marcel Thomas Andreas Eris) " +
                "ist ein deutscher Webvideoproduzent und Livestreamer.  In seinen Streams spielt er " +
                "Videospiele, wie z. B. Call of Duty, FIFA, Mario Kart, PlayerUnknown\’s Battlegrounds und Fortnite oder er spielt in (Online-)Casinos." +
                " Außerdem ist er für seine besondere und einzigartige Art & Weise und die Realtalks ausser Zentrale bekannt." +
                " Seit 2018 gilt er als größter deutscher Livestreamer auf Twitch. Momentan ist er knackige 24 Jahre alt.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
          )
        )
      ))
    ]);
  }
}
