import 'package:flutter/material.dart';

class AdditionalInfo extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const AdditionalInfo(
      {required this.icon,
      required this.label,
      required this.value,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        const SizedBox(
          height: 8,
        ),
        Text(label),
        const SizedBox(
          height: 8,
        ),
        Text(value)
      ],
    );
  }
}
