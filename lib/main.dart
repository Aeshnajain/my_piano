import 'package:flutter/material.dart';
import 'layer1file.dart';
import 'layer2file.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
   @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         backgroundColor: Colors.black,
         appBar: AppBar(
           title: Text("My Piano"),
           backgroundColor: Colors.blueGrey,
           centerTitle: true,
         ),
         body: Stack(
           children: [
             layer1(),
             Padding(
               padding:EdgeInsets.fromLTRB(0, 15, 0, 30),
               child: layer2(),
             ),
           ],
         )
       )
     );
    // TODO: implement build
    throw UnimplementedError();
  }
}




