import 'package:flutter/material.dart';

enum PetState {
  CONTENT,
  MEOWING,
  PURRRING,
}

enum PetAction {
  ENTERING,
  COMING,
}

class Pet {
  final String name;
  final Color color;
  final PetState state;

  Pet(this.name, this.color, this.state);

  @override
  String toString() {
    return 'Name $name , Color : $color ,state : $state';
  }
}

const availablePets = <Pet>[
  Pet('Thomas', Colors.grey, PetState.CONTENT),
  Pet('Charles', Colors.red, PetState.MEOWING),
  Pet('Thomas', Colors.black, PetState.PURRRING),
  Pet('Thomas', Colors.Colors.orange, PetState.CONTENT),
];
