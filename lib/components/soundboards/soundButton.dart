// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class SoundButton extends StatelessWidget {
  final String text;
  final String path;
  final String type;
  final String sType;
  final bool isStopBtn;

  AudioCache cache = AudioCache(); // you have this
  AudioPlayer player = AudioPlayer(); // create this

  void playFile(String file) async{
    player = await cache.play(file); // assign player here
  }

  void stopFile() {
    player.stop(); // stop the file like this
  }

  void onClick([bool isStop]) {
    if (isStop == null) {
      playFile("sounds/$sType/$type/$path");
    } else {
      player.stop();
      cache.clearCache();
      stopFile();
      print("slatt");
    }
  }

  Future<void> onLongPress(BuildContext context) async {
    final ByteData bytes =
        await rootBundle.load('assets/sounds/$sType/$type/$path');
    await Share.file('', '$path', bytes.buffer.asUint8List(), 'audio/mpeg');
  }

  SoundButton({this.text, this.path, this.type, this.sType, this.isStopBtn});

  Widget build(BuildContext context) {
    var c;
    switch (this.type) {
      case 'montanablack':
        c = Color.fromRGBO(52, 73, 94, 1);
        break;
      case 'knossi':
        c = Color.fromRGBO(255, 215, 0, 1);
        break;
      case 'standartskill':
        c = Colors.green;
        break;
      case 'ungespielt':
        c = Colors.orange;
        break;
      case 'justin':
        c = Colors.pinkAccent;
        break;
      case 'steel':
        c = Colors.blue;
        break;
      default:
        c = Color.fromRGBO(52, 73, 94, 1);
    }

    if (isStopBtn == null)
      return Expanded(
        child: Padding(
          padding: EdgeInsets.all(3),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                this.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            onPressed: this.onClick,
            onLongPress: () => this.onLongPress(context),
            color: c,
          ),
        ),
      );
    else
      return RaisedButton(
        child: Text(
          this.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          this.onClick(true);
        },
        color: Colors.redAccent,
      );
  }
}
