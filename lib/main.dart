import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playAudio(int i){
    var player=AudioCache();
    player.play('note$i.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      playAudio(1);
                    });
                  },
                )),
                Expanded(
                    child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    setState(() {
                      playAudio(2);
                    });
                  },
                )),
                Expanded(
                    child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    setState(() {
                      playAudio(3);
                    });
                  },
                )),
                Expanded(
                    child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    setState(() {
                      playAudio(4);
                    });
                  },
                )),
                Expanded(
                    child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      playAudio(5);
                    });
                  },
                )),
                Expanded(
                    child: FlatButton(
                  color: Colors.indigo[900],
                  onPressed: () {
                    setState(() {
                      playAudio(6);
                    });
                  },
                )),
                Expanded(
                    child: FlatButton(
                  color: Colors.purple[200],
                  onPressed: () {
                    setState(() {
                      playAudio(7);
                    });
                  },
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
