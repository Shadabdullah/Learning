import 'package:classes_widgets/classes/tapbox/tapboxScree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.green,
            titleTextStyle: TextStyle(
              fontFamily: 'monospace', fontSize: 18, // Set the font size to 18
              fontWeight: FontWeight.bold, // Set the font weight to bold
              color: Colors.white,
            ),
          ),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        ),
        home: TapBoxScreen());
  }
}
