import 'package:app0/favroute_screen.dart';
import 'package:app0/generator_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app0/providers/myapp_state.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyappState(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage();
        break;
      case 1:
        page = FavouriteScreen(); // Corrected the class name
        break; // Added break statement

      default:
        throw UnimplementedError('No Widget for selected Index');
    }

    return Scaffold(
      body: Row(children: [
        NavigationRail(
          elevation: 10,
          extended: MediaQuery.of(context).size.width >= 600,
          destinations: const [
            NavigationRailDestination(
                icon: Icon(Icons.home), label: Text('Home')),
            NavigationRailDestination(
                icon: Icon(Icons.favorite), label: Text("Favourite"))
          ],
          selectedIndex: selectedIndex,
          onDestinationSelected: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
        ),
        Expanded(
          child: Container(
            color: Theme.of(context).colorScheme.primary,
            child: page,
          ),
        )
      ]),
    );
  }
}
