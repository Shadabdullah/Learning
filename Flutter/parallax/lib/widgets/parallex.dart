import 'package:flutter/material.dart';
import 'package:parallax/widgets/location_listitems.dart';
import 'package:parallax/widgets/locations.dart';

class PrarallaxRecipe extends StatelessWidget {
  const PrarallaxRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        for (final location in locations)
          LocationListItems(
              imageUrl: location.imageUrl, name: location.name, place: location.place)
      ]),
    );
  }
}
