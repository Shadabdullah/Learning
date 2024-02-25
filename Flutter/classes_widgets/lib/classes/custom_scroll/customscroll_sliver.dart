import 'package:flutter/material.dart';

class CustomScrollViewApp extends StatefulWidget {
  const CustomScrollViewApp({super.key});

  @override
  State<CustomScrollViewApp> createState() => _CustomScrollViewAppState();
}

class _CustomScrollViewAppState extends State<CustomScrollViewApp> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Hellp'),
      ],
    );
  }
}
