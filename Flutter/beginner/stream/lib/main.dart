import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pet Stream',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PetScreen(),
    );
  }
}

// Define the PetState enum
enum PetState {
  CONTENT,
  MEOWING,
  PURRING,
}

// Define the PetAction enum
enum PetAction {
  ENTERING,
  LEAVING,
}

// Define the PetEvent class
class PetEvent {
  final Pet pet;
  final PetAction action;
  final List<Pet> activePets;

  PetEvent(this.pet, this.action, this.activePets);
}

// Define the Pet class
class Pet {
  final String name;
  final Color color;
  final PetState state;

  const Pet(this.name, this.color, this.state);

  @override
  String toString() {
    return 'Name: $name, Color: ${color.toString()}, state: $state';
  }
}

// Define the PetService class
class PetService {
  final petStream = StreamController<PetEvent>();
  final rand = Random();

  // List of available pets
  static const availablePets = <Pet>[
    Pet('Thomas', Colors.grey, PetState.CONTENT),
    Pet('Charles', Colors.red, PetState.MEOWING),
    Pet('Teddy', Colors.black, PetState.PURRING),
    Pet('Mimi', Colors.orange, PetState.PURRING),
  ];

  Pet randomCat() => availablePets[rand.nextInt(availablePets.length)];

  PetService() {
    final pets = <Pet>[];

    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        final number = pets.length > 3 ? 0 : rand.nextInt(1);

        switch (number) {
          case 0:
            {
              final pet = randomCat();
              petStream.add(PetEvent(
                pet,
                PetAction.ENTERING,
                pets,
              ));
              pets.add(pet);
              break;
            }
          case 1:
            {
              if (pets.isNotEmpty) {
                final petIndex = rand.nextInt(pets.length);
                final pet = pets[petIndex];
                petStream.add(
                  PetEvent(
                    pet,
                    PetAction.LEAVING,
                    pets,
                  ),
                );
                pets.removeAt(petIndex);
              }
              break;
            }
        }
      },
    );
  }
}

// Define the PetScreen class
class PetScreen extends StatefulWidget {
  @override
  _PetScreenState createState() => _PetScreenState();
}

class _PetScreenState extends State<PetScreen> {
  late final Stream<PetEvent> _petStream;

  @override
  void initState() {
    final petService = PetService();
    _petStream = petService.petStream.stream;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Pet Stream'),
      ),
      body: StreamBuilder<PetEvent>(
        stream: _petStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  Text('Waiting for some pets...')
                ],
              ),
            );
          }

          final event = snapshot.data!;
          final pet = event.pet;

          return Stack(
            children: [
              Center(
                child: AnimatedSize(
                  duration: Duration(milliseconds: 300),
                  clipBehavior: Clip.antiAlias,
                  child: Card(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        ...?event.activePets.map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.pets,
                                  size: 30,
                                  color: e.color,
                                ),
                                Text(e.name)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    child: Text(
                      pet.name +
                          ' is ' +
                          describeEnum(pet.state).toLowerCase() +
                          ' and is ' +
                          describeEnum(event.action).toLowerCase() +
                          '.',
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
