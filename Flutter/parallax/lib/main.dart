import 'package:flutter/material.dart';

void main() {
  runApp(const ParallaxApp());
}

class ParallaxApp extends StatelessWidget {
  const ParallaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(context);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: const Text('Parallax'),
        backgroundColor: Colors.green,
      )),
    );
  }
}
