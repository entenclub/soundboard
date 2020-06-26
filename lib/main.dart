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
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
            child: TypewriterAnimatedTextKit(
                text: [
                  "Öffne das Menü",
                  "Öffne das Menü, um loszulegen",
                ],
                textStyle: TextStyle(fontSize: 30.0, fontFamily: "Agne"),
                textAlign: TextAlign.center,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
          ),),
          AnimatedDrawing.svg(
            "assets/images/test.svg",
            run: true,
            duration: Duration(seconds: 10),
          ),
        ],
      ),);
  }
}