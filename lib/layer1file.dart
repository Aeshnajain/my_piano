import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class layer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseTile(note:1),
        BaseTile(note:2),
        BaseTile(note:3),
        BaseTile(note:4),

        BaseTile(note:5),
        BaseTile(note:6),
        BaseTile(note:7),

        BaseTile(note:1),
        BaseTile(note:2),
        BaseTile(note:3),

        BaseTile(note:4),
        BaseTile(note:5),
        BaseTile(note:6),

        BaseTile(note:1),
        BaseTile(note:2),
        BaseTile(note:3),

      ],
    );
  }
}

class BaseTile extends StatelessWidget {
  @override
  int note;
  BaseTile({@required this.note});
  Widget build(BuildContext context) {
    return Expanded(child: GestureDetector(
      onTap:(){
        final AudioCache player = AudioCache();
        player.play('note$note.wav');
        print("Clicked!");
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 0.5, color: Colors.black),
            bottom: BorderSide(width: 0.5, color: Colors.black),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 3,
              blurRadius: 3,
            ),
          ],
        ),
      ),
    ));
  }
}
