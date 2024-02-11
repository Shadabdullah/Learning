import 'package:app0/main.dart';
import 'package:app0/widgets/big_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GeneratorPage extends StatelessWidget {
  const GeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyappState>();
    var pair = appState.current;
    IconData icon;
    if (appState.favourites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_outline;
    }
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: appState.toggleFavourite,
                child: Icon(icon),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: appState.getNext, child: const Text('Next')),
            ],
          )
        ],
      )),
    );
  }
}
