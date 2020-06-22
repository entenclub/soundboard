// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// 🌎 Project imports:
import 'package:german_meme_soundboard/components/drawer/settings.dart';
import 'package:german_meme_soundboard/components/soundboards/youtuber/helddersteine.dart';
import 'package:german_meme_soundboard/components/soundboards/youtuber/montananblack.dart';
import 'package:german_meme_soundboard/components/soundboards/youtuber/knossi.dart';
import 'package:german_meme_soundboard/components/soundboards/youtuber/standartskill.dart';
import 'package:german_meme_soundboard/components/soundboards/youtuber/ungespielt.dart';
import 'package:german_meme_soundboard/components/soundboards/youtuber/justin.dart';
import 'package:german_meme_soundboard/components/soundboards/youtuber.dart';
import 'package:german_meme_soundboard/components/soundboards/musicians.dart';
import 'package:german_meme_soundboard/components/soundboards/miscellaneous.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              ExpansionTile(
                leading: Icon(Icons.video_library),
                title: Text("YouTuber Sounds"),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person_outline),
                    title: Text("Montanablack"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Montanablack(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.crown,
                      size: 20.0,
                    ),
                    title: Text("Knossi"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Knossi(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.gamepad,
                      size: 20.0,
                    ),
                    title: Text("Standart Skill"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Standartskill(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.carrot,
                      size: 20.0,
                    ),
                    title: Text("Ungespielt"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Ungespielt(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.fillDrip,
                      size: 20.0,
                    ),
                    title: Text("Justin"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Justin(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.solidGem,
                      size: 20.0,
                    ),
                    title: Text("Held der Steine"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Helddersteine()));
                    },
                  )
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.library_music),
                title: Text("Musiker Sounds"),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.music_note),
                    title: Text("187 Strassenbande"),
                  ),
                ],
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.asterisk,
                  size: 20.0,
                ),
                title: Text("Andere Sounds"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MiscellaneousSoundboard(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Container(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              child: Column(
                children: <Widget>[
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Einstellungen"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Settings(),
                          ));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.star_border),
                    title: Text("App bewerten"),
                    onTap: () async {
                      final appUrl =
                          "https://play.google.com/store/apps/details?id=x.montanablaksoundboard";
                      if (await canLaunch(appUrl)) {
                        await launch(appUrl);
                      } else {
                        throw 'Cound not launch $appUrl';
                      }
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.feedback),
                    title: Text("Feedback etc."),
                    onTap: () async {
                      final mail =
                          "mailto:asoysal301@gmail.com?subject=Youtuber Soundboard&body=Moin";
                      if (await canLaunch(mail)) {
                        await launch(mail);
                      }
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.code),
                    title: Text("Quellcode"),
                    onTap: () async {
                      final codeUrl =
                          "https://github.com/Sheesher/German-Meme-Soundboard";
                      if (await canLaunch(codeUrl)) {
                        await launch(codeUrl);
                      } else {
                        throw 'Cound not launch $codeUrl';
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
