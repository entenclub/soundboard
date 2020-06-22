// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter_whatsnew/flutter_whatsnew.dart';

// 🌎 Project imports:
import 'package:german_meme_soundboard/components/drawer/drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) =>
          ThemeData(brightness: brightness, primaryColor: Colors.indigo),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          title: 'German Meme Soundboard',
          theme: theme,
          home: MyHomePage(title: 'German Meme Soundboard'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double textScaleFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Versionsübersicht"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WhatsNewPage.changelog(
                        title: Text(
                          "Versionsübersicht",
                          textScaleFactor: textScaleFactor,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        buttonText: Text(
                          'Schließen',
                          textScaleFactor: textScaleFactor,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      fullscreenDialog: true,
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("Nach Updates suchen"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
