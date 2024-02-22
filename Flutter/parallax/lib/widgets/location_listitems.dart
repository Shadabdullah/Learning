import 'package:flutter/material.dart';

class LocationListItems extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String country;

  const LocationListItems(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.country});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRect(
          child: Stack(
            children: [_buildParallaxBackground(context)],
          ),
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Positioned.fill(
        child: Image.network(
      imageUrl,
      fit: BoxFit.cover,
    ));
  }
}
