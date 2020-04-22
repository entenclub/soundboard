import 'package:flutter/material.dart';
import 'pages/soundboard.dart';
import 'pages/aboutTheApp.dart';

 
void main() => runApp(
      SoundBoard(),
    );

class SoundBoard extends StatefulWidget {
  final String title;
  static final navKey = new GlobalKey<NavigatorState>();
  const SoundBoard({Key navKey, this.title}) : super(key: navKey);

  @override
  State<StatefulWidget> createState() {
    return SoundBoardState();
  }
}

class SoundBoardState extends State<SoundBoard>
    with SingleTickerProviderStateMixin {
  int _currentPage = 0;

  Future<void> popUpAlert(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Center(),
          ],
        );
      },
    );
  }

  final _options = [
    Soundboard(),
    AboutTheApp(),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: SoundBoard.navKey,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(236, 240, 241, 1),
        appBar: AppBar(
          title: Text('Youtuber Soundboard'),
          backgroundColor: Color.fromRGBO(52, 73, 94, 1),
          actions: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 0),
              decoration: BoxDecoration(color: Color.fromRGBO(19, 15, 64, 1)),
            ),
          ],
        ),
        body: _options[_currentPage],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(236, 240, 241, 1),
          currentIndex: _currentPage,
          onTap: (int index) {
            setState(
              () {
                _currentPage = index;
              },
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              title: Text("Sounds"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.developer_board),
              title: Text("Über die App"),
            ),
          ],
        ),
      ),
    );
  }
}

// useless tingZZZ

/* child: AlertDialog(
                title: Text('Neuigkeiten'),
                content: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Die neue Version 2.187 bringt folgendes' +
                              ' mit sich: \n• Neue Sounds + Youtuber \n• Sounds können nun geteilt werden (lange Halten)\n•' +
                              ' Ein E-Mail- & Spendenknopf \n• Nur zur Info: Wir arbeiten momentan daran, dass man in der App den' +
                              ' Systembenachrichtigungston ändern kann. Dies ist jedoch noch nicht in dieser Version enthalten.',
                          style: TextStyle(fontSize: 17, color: Colors.black))
                    ],
                  ),
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ), */

/* child: FlatButton(
                textColor: Colors.white,
                onPressed: () =>
                    popUpAlert(SoundBoard.navKey.currentState.overlay.context),
                child: Text("Neuigkeiten"),
              ), */