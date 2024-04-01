import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: const Text('Animation'),
      ),
      body: Center(
        child: Container(
            height: 200,
            width: 200,
            color: Colors.pink[200],
            child: const Text("Animation")),
      ),
    );
  }
}
