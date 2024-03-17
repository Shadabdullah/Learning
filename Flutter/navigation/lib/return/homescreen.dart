import 'package:flutter/material.dart';
import 'package:navigation_todo/return/selection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: const Text('Returning Data demo'),
      ),
      body: const Center(
        child: Selection(),
      ),
    );
  }
}
