import 'package:classes_widgets/classes/interactive/favbutton.dart';
import 'package:flutter/material.dart';

class InterActiveScreen extends StatelessWidget {
  const InterActiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("InterActiveButton"),
      ),
      body: Center(
        child: FavoriteWidget(),
      ),
    );
  }
}
