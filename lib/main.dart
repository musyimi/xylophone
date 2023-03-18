import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FloatingActionButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('note3.mp3'));
              },
              child: Text('click me!'),
            ),
          ),
        ),
      ),
    );
  }
}
