import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.mp3'));
  }

  Expanded createKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playsound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  const XylophoneApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createKey(color: Colors.black, soundNumber: (1)),
              createKey(color: Colors.white, soundNumber: (2)),
              createKey(color: Colors.black, soundNumber: (3)),
              createKey(color: Colors.white, soundNumber: (4)),
              createKey(color: Colors.black, soundNumber: (4)),
            ],
          ),
        ),
      ),
    );
  }
}
