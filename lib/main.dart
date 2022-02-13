import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(music());
}

class music extends StatelessWidget {
  void playsound(int sound_number) {
    final player = AudioCache();
    player.play('note$sound_number.wav');
  }

  Expanded buildKey({var color, var sound_number}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(sound_number);
        },
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text("Xylophone"),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, sound_number: 8),
              buildKey(color: Colors.orange, sound_number: 2),
              buildKey(color: Colors.yellow, sound_number: 3),
              buildKey(color: Colors.green, sound_number: 4),
              buildKey(color: Colors.teal, sound_number: 5),
              buildKey(color: Colors.blue, sound_number: 6),
              buildKey(color: Colors.purple, sound_number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
