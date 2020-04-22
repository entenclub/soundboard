import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/services.dart';

int pressCount = 0;
class SoundButton extends StatelessWidget {
  final String text;
  final String path;
  final String type;
  
  void onClick() {
    AudioCache player = AudioCache();
    player.play("sounds/$path");
    pressCount += 1;
    print(pressCount);
    }
  
   Future<void> onLongPress(BuildContext context) async {
    final ByteData bytes = await rootBundle.load('assets/sounds/$path');  
    return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Center(child: AlertDialog(
            title: Text("Was nun?"),
            actions: <Widget>[
              FlatButton(onPressed: () => Navigator.of(context).pop(), child: Text("Abbrechen")),
              FlatButton(child:
              Text("Teilen"), onPressed: () async {
                await Share.file('slatt', '$path', bytes.buffer.asUint8List(), 'audio/mpeg');
                Navigator.of(context).pop();
})]))]);});}

  SoundButton({this.text, this.path, this.type});
  Widget build(BuildContext context) {

    var c;
    switch(this.type) {
      case 'monte':
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
                )
              )),
          onPressed: this.onClick,
          onLongPress: () => this.onLongPress(context),
          color: c
)));}}