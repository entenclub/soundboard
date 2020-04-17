import 'package:flutter/material.dart';

class Knossi extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "Knossi",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
          ),
        ),
      ),
      ClipOval(
        child: Image.asset("assets/icon/knossi.jpg", width: 220, height: 187, fit: BoxFit.cover)
        ),
      Container(
          child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: Text(
            "Knossi (geboren in Malsch - wohnhaft in Baden-Baden; bürgerlich: Jens Heinz Richard Knossalla) ist ein deutscher Unterhalter und Livestreamer." +
                " In seinen Livestreams spielt er Casino mit seiner sehr emotionalen, außergewöhnlich & sehr ruhigen Art." +
                " Zudem sieht man ihn oftmals zusammen mit anderen bekannten Personen. Am 30.01.20 startete sein grandiose Karriere als Musiker.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w300,
            )
          )
        )
      ))
    ]);
  }
}
