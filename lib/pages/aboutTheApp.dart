import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final String mail = "mailto:info@3nt3.de?subject=Youtuber Soundboard";

class AboutTheApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
               Padding(
                padding: EdgeInsets.only(top: 0),
                child: Center(
                  child: Text(
                    "Feedback",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            "Wenn du der Meinung bist, dass bestimmte Sounds in diesem Soundboard fehlen, oder uns kontaktieren möchtest, dann bitten wir dich inbrünstig uns über dein Anlegen zu informieren, danke!",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text: ". Unsere Kontakt-E-Mail:",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              ),
              // mail
              Padding(
                padding: EdgeInsets.all(1),
                child: FlatButton(
                  hoverColor: Colors.blue,
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.blue,
                  onPressed: () async {
                    if (await canLaunch(mail)) {
                      await launch(mail);
                    }
                  },
                  child: (Text(
                    "info@3nt3.de",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  )),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    "Maxi-King",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Center(
                  child: Text(
                    "Wenn du uns einen Maxi-King spendieren willst, kontaktier uns!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
