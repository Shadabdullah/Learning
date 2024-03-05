import 'package:classes_widgets/classes/tapbox/tapbox.dart';
import 'package:flutter/material.dart';

class TapBoxScreen extends StatelessWidget {
  const TapBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("InterActiveButton"),
      ),
      body: Center(
        child: TapBoxA(),
      ),
    );
  }
}
