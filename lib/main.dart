// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Demo Xylophone'),
      ),
      body: Demo(),
    )),
  );
}

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);
  void playsound(int a){
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
        Audio("assets/audios/note$a.wav")
    );
  }
Expanded buildkey({required Color color,required int a}){
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        playsound(a);
      },
      child: Text(''),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          buildkey(color: Colors.red,a:1),
          buildkey(color: Colors.orange,a:2),
          buildkey(color: Colors.yellow,a:3),
          buildkey(color: Colors.green,a:4),
          buildkey(color: Colors.teal,a:5),
          buildkey(color: Colors.blue,a:6),
          buildkey(color: Colors.purple,a:7),

        ],
      ),
    );
  }
}
