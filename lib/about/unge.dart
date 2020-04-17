import 'package:flutter/material.dart';

class Unge extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "Ungespielt",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
          ),
        ),
      ),
      ClipOval(
      child: Image.asset("assets/icon/unge.jpg", height: 200, fit: BoxFit.cover)),
       Container(
          child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
              TextSpan(text: "Ungespielt (bürgerlich: Simon Wiefels), auch Unge genannt, ist ein deutsch VLOGer, Gaming- & Reaktions-Youtuber. Sehen tut man ihn oftmals gemeinsam mit anderen, bekannten ",
               style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
               ),
              TextSpan(text: "Influenzan. ", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 17, fontWeight: FontWeight.w300)),
              TextSpan(text: "Große Bekanntheit erlangte er durch seine Reaktionsvideos. Viele betrachten ihn als einen der philosophischsten Youtuber der ganzen Welt.",
               style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),)
              ])))))]);}}