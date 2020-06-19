import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/services.dart';


class SoundButton extends StatelessWidget {
  final String text;
  final String path;
  final String type;

  void onClick() {
    AudioCache player = AudioCache();
    player.play("sounds/youtuber/$type/$path");
  }

  Future<void> onLongPress(BuildContext context) async {
    final ByteData bytes = await rootBundle.load('assets/sounds/$type/$path');
    await Share.file('', '$path', bytes.buffer.asUint8List(), 'audio/mpeg');
  }

  SoundButton({this.text, this.path, this.type});
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

    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(10),
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
            color: c),
      ),
    );
  }
}
