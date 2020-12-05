import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneMusicApp());
Widget buildKey({int number:1, color:Colors.deepOrange}){
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play('note$number.wav');
      },
    ),
  );
}

class XylophoneMusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(number:1,color:Colors.deepOrange),
          buildKey(number:2,color:Colors.teal),
          buildKey(number:3,color:Colors.yellow),
          buildKey(number:4,color:Colors.blue),
          buildKey(number:5,color:Colors.green),
          buildKey(number:6,color:Colors.red),
          buildKey(number:7,color:Colors.brown),

        ],
      )),
    );
  }
}
