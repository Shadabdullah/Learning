import 'package:app01/listitem.dart';
import 'package:app01/widgets/lists_items.dart';
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
        appBar: AppBar( backgroundColor: Colors.green,
            leading: const IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Menu',
              onPressed: null,
            ),
            title: const Text("Flutter"),
            actions: const [
              IconButton(
                  icon: Icon(Icons.search), tooltip: 'Seacrh', onPressed: null)
            ]),
        body:ListItems(items: items) , 
        floatingActionButton: const FloatingActionButton(
            tooltip: 'Add', onPressed: null, child: Icon(Icons.add)));
  }
}
