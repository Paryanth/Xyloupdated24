import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text('XYLOPHONE'),centerTitle: true,),
        body:XyloPage(),
      )
  ));
}

class XyloPage extends StatefulWidget {
  const XyloPage({Key? key}) : super(key: key);

  @override
  _XyloPageState createState() => _XyloPageState();
}

class _XyloPageState extends State<XyloPage> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  void PlayAudio(int i){
    assetsAudioPlayer.open(
      Audio("assets/note$i.wav"),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.amber
          ),
          onPressed: (){
            PlayAudio(1);
          }, child: Text('First'),
        ),),
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.cyanAccent
          ),
          onPressed: (){
            PlayAudio(2);
          }, child: Text('Second'),
        ),),
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.brown
          ),
          onPressed: (){
            PlayAudio(3);
          }, child: Text('Third'),
        ),),
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.green
          ),
          onPressed: (){
            PlayAudio(4);
          }, child: Text('Four'),
        ),),
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.red
          ),
          onPressed: (){
            PlayAudio(5);
          }, child: Text('Five'),
        ),),
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.black
          ),
          onPressed: (){
            PlayAudio(6);
          }, child: Text('Six'),
        ),),
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.blue
          ),
          onPressed: (){
            PlayAudio(7);
          }, child: Text('Seven'),
        ),),
      ],
    );
  }
}
