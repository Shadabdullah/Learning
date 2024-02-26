import 'package:flutter/material.dart';

class CustomScrollViewApp extends StatefulWidget {
  const CustomScrollViewApp({super.key});

  @override
  State<CustomScrollViewApp> createState() => _CustomScrollViewAppState();
}

class _CustomScrollViewAppState extends State<CustomScrollViewApp> {
  List<int> top = [];
  List<int> bottom = [];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    const Key centerKey = ValueKey<String>("BottomSliverList");
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('CustomScrollViewApp'),
          leading: IconButton(
            onPressed: () {
              setState(() {
                top.add(-top.length - 1);
                bottom.add(bottom.length);
              });
          
            },
            icon: const Icon(
              Icons.add,
              color: Colors.lime,
            ),
          ),
        ));
  }
}
