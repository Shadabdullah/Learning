import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TutorialPage());
  }
}

class TutorialPage extends StatelessWidget {
  const TutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Menu',
              onPressed: null,
            ),
            title: Text("Flutter"),
            actions: const [
              IconButton(
                  icon: Icon(Icons.search), tooltip: 'Seacrh', onPressed: null)
            ]),
        body: Center(child: Text("TextAtCenter")),
        floatingActionButton: FloatingActionButton(
        tooltip:'Add', onPressed:null , child:Icon(Icons.add)   
      ));
  }
}
