import 'package:flutter/material.dart';

class ForeCastItems extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const ForeCastItems(
      {required this.icon,
      required this.label,
      required this.value,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Card(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(value),
            const SizedBox(height: 10),
            Icon(icon),
            Text(label),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
