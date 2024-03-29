import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyappState extends ChangeNotifier {
  var current = WordPair.random();
  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  var favourites = <WordPair>[];

  void toggleFavourite() {
    if (favourites.contains(current)) {
      favourites.remove(current);
    } else {
      favourites.add(current);
    }
    print(favourites);
    notifyListeners();
  }
}
