import 'package:flutter/material.dart';

class ProductivityButton extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final VoidCallback onPressed;

  const ProductivityButton(
      {required this.color,
      required this.text,
      required this.size,
      required this.onPressed,
      super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: size,
      color: color,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
