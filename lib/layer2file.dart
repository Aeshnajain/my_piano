import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';


class layer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: SizedBox(),flex: 3,),
        Expanded(child: layertile(note:3),flex: 2),
        Expanded(child: SizedBox(),flex: 1),
        Expanded(child: layertile(note:2),flex: 2),
        Expanded(child: SizedBox(),flex: 1),
        Expanded(child: layertile(note:1),flex: 2),
        Expanded(child: SizedBox(),flex: 3,),
        Expanded(child: layertile(note:7),flex: 2),
        Expanded(child: SizedBox(),flex: 1),
        Expanded(child: layertile(note:6),flex: 2),
        Expanded(child: SizedBox(),flex:3),
        Expanded(child: layertile(note:5),flex: 2),
        Expanded(child: SizedBox(),flex: 1),
        Expanded(child: layertile(note:4),flex: 2),
        Expanded(child: SizedBox(),flex: 1),
        Expanded(child: layertile(note:3),flex: 2),
        Expanded(child: SizedBox(),flex: 3,),
        Expanded(child: layertile(note:2),flex: 2,),
        Expanded(child: SizedBox(),flex: 1,),
        Expanded(child: layertile(note:1),flex: 2,),
        Expanded(child: SizedBox(),flex:2),

      ],
    );
  }
}

class layertile extends StatelessWidget{

  int note;
  layertile({@required this.note});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: (){
        final AudioCache player = AudioCache();
        player.play('note$note.wav');
        print("Clicked!");
      },
      child: Container(
        width: 275,

        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(1),
                spreadRadius: -1,
                blurRadius:4 ,
                offset: Offset(5, 0)
            ),
          ],
          color: Colors.black,
        ),

      ),
    );
  }
}



