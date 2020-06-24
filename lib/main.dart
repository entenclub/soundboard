// 🐦 Flutter imports:
import 'package:drawing_animation/drawing_animation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

// 🌎 Project imports:
import 'package:german_meme_soundboard/components/drawer/drawer.dart';
import 'package:german_meme_soundboard/components/searchForUpdates/searchForUpdates.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => ThemeData(
          brightness: brightness,
          primaryColor:
              brightness == Brightness.light ? Colors.blue : Colors.black),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          title: 'Deutsches Meme Soundboard',
          theme: theme,
          home: MyHomePage(title: 'Deutsches Meme Soundboard'),
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
<<<<<<< HEAD
      body: ListView(
        children: <Widget>[
          SizedBox(
            width: 250.0,
            child: TypewriterAnimatedTextKit(
                onTap: () {
                  print("Tap Event");
                },
                text: [
                  "Discipline is the best tool",
                  "Design first, then code",
                  "Do not patch bugs out, rewrite them",
                  "Do not test bugs out, design them out",
                ],
                textStyle: TextStyle(fontSize: 30.0, fontFamily: "Agne"),
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
          ),
          AnimatedDrawing.svg(
            "assets/images/test.svg",
            run: true,
            duration: Duration(seconds: 10),
          ),
        ],
      ),
=======
<<<<<<< HEAD
      body: ListView(
        children: <Widget>[
          SafeArea(
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchForUpdates(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ka

/* WaveWidget(
                config: CustomConfig(
                  gradients: [
                    [Colors.red, Color(0xEEF44336)],
                    [Colors.red[800], Color(0x77E57373)],
                    [Colors.orange, Color(0x66FF9800)],
                    [Colors.yellow, Color(0x55FFEB3B)]
                  ],
                  durations: [35000, 19440, 10800, 6000],
                  heightPercentages: [0.20, 0.23, 0.25, 0.30],
                  blur: MaskFilter.blur(BlurStyle.solid, 10),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.topRight,
                ),
                colors: [
                  Colors.white70,
                  Colors.white54,
                  Colors.white30,
                  Colors.white24,
                ],
                durations: [
                  32000,
                  21000,
                  18000,
                  5000,
                ],
                waveAmplitude: 0,
                heightPercentages: [0.25, 0.26, 0.28, 0.31],
                backgroundColor: Colors.blue,
                size: Size(
                  double.infinity,
                  double.infinity,
                ),
              ), */
=======
      body: ListView(children: <Widget>[Text("Moin")]),
>>>>>>> b160fab9f77598b4bca465f3cf31a136be31d727
    );
  }
}
>>>>>>> ceedd45f4def3c9b30ce58a02b3ed6f6f77c6ca1
