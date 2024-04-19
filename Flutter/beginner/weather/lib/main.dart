import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Weather App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: const Column(
                  children: [
                    Text(
                      '300.75 F',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Icon(
                      Icons.cloud,
                      size: 64,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Rain',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SingleChildScrollView(child: Card(child: ForeCastItems()))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ForeCastItems extends StatelessWidget {
  ForeCastItems({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Placeholder();
  }
}
