import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Expanded createKey(int audioNum, Color inputColor) {
      Audio audio = Audio.load('assets/note$audioNum.wav');
      return Expanded(
        child: TextButton(
          onPressed: () {
            audio.play();
          },
          style: TextButton.styleFrom(backgroundColor: inputColor),
          child: Text(''),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                createKey(1, Colors.red),
                createKey(2, Colors.orange),
                createKey(3, Colors.yellow),
                createKey(4, Colors.green),
                createKey(5, Colors.teal),
                createKey(6, Colors.blue),
                createKey(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
