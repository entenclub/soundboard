import 'package:flutter/material.dart';

class Justin extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "Justin",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
          ),
        ),
      ),
      SizedBox(height: 5.0),
      Image.asset("assets/icon/justin.png", height: 187),
      SizedBox(height: 5.0),
      Container(
          child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(text: "Justin (bürgerlich: Justin Fuchs) ist einer der bekanntesten deutschsprachigen Fashion-Youtuber. In letzter Zeit erlangte er ebenso viel Aufmerksamkeit durch Reaktionsvideos. Bekannt ist er desweiteren für seine eigene Kleidungsmarke ",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                 ),
                 TextSpan(text: "peso",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),
                 ),
                 TextSpan(text: ". Er gilt insbesondere als der Reaktionsboss. Gerüchten zufolge ist sein neuer ",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                 ),
                TextSpan(text: "ICED-OUT ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.lightBlue)),
                TextSpan(text: "Schmuck bereits in Mache.", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300))
])))))]);}}