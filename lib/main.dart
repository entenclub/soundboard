import 'package:flutter/material.dart';
import 'pages/soundboard.dart';
import 'pages/aboutTheApp.dart';
import 'pages/about.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  final String title;
  static final navKey = new GlobalKey<NavigatorState>();
  const MyApp({Key navKey, this.title}) : super(key: navKey);
  
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
}}

class MyAppState extends State<MyApp> {

  Future<void> popUpAlert(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return ListView(
        shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          Center(child: AlertDialog(
        title: Text('Neuigkeiten'),
        content: RichText(text: TextSpan(
          children: <TextSpan>[
          TextSpan(text: 'Die neue Version 2.187 bringt folgendes' 
          + ' mit sich: \n• Neue Sounds + Youtuber \n• Sounds können nun geteilt werden (lange Halten)\n•'
          + ' Ein E-Mail- & Spendenknopf \n• Nur zur Info: Wir arbeiten momentan daran, dass man in der App den'
          + ' Systembenachrichtigungston ändern kann. Dies ist jedoch noch nicht in dieser Version enthalten.'
          , style: TextStyle(fontSize: 17, color: Colors.black))])),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
})]))]);});}

  int selectedPage = 0;
  final _options = [Soundboard(), AboutTheApp(), About()];
  
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: MyApp.navKey,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(236, 240, 241, 1),
        appBar: AppBar(
          title: Text('Youtuber Soundboard'),
          backgroundColor: Color.fromRGBO(52, 73, 94, 1),
          actions: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 0),
              decoration: BoxDecoration(
              color: Color.fromRGBO(19, 15, 64,1)),
              child: FlatButton(textColor: Colors.white, onPressed: () => popUpAlert(MyApp.navKey.currentState.overlay.context), child: Text("Neuigkeiten"))
            )],
        ),
        body: _options[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(236, 240, 241, 1),
          currentIndex: selectedPage,
          onTap: (int index) {
            setState(
              () {
                selectedPage = index;
});},
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              title: Text("Sounds"),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.developer_board), title: Text("Über die App")),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Über die Youtuber"),
)])));}}