import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GifPlayer(),
    );
  }
}

class GifPlayer extends StatefulWidget {
  @override
  _GifPlayerState createState() => _GifPlayerState();
}

class _GifPlayerState extends State<GifPlayer> {
  bool isPlaying = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GIF player",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ), // Missing closing parenthesis for appBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isPlaying
                ? Image.asset('assets/dog_gif.gif', width: 400, height: 400)
                : Image.asset('assets/static.png', width: 400, height: 400),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isPlaying = !isPlaying;
                });
              },
              child: Text(isPlaying ? "Pause" : "Play"),
            ),
          ],
        ),
      ),
    );
  }
}
