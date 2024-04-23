import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _numberForm = 0;
  String _startMeasure = '';
  String _toValue = '';
  final List<String> _measures = [
    'meters',
    'kilometers',
    'grams',
    'kilograms',
    'feet',
    'miles',
    'pounds (lbs)',
    'ounces',
  ];

  @override
  void initState() {
    super.initState();
    _startMeasure = _measures.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: const Text(
          "Unit Conversion",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            const Text('Value',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            const SizedBox(
              height: 16,
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (input) {
                var rv = double.tryParse(input);
                if (rv != null) {
                  setState(() {
                    _numberForm = rv;
                  });
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
            const Text('From', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 16,
            ),
            DropdownButton(
              value:
                  _startMeasure, // Set the value to the current selected item
              items: _measures.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _startMeasure = newValue!; // Update the selected item
                });
              },
            ),
            const SizedBox(
              height: 16,
            ),
            const Text('To', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 16,
            ),
            DropdownButton(
              value:
                  _startMeasure, // Set the value to the current selected item
              items: _measures.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _startMeasure = newValue!; // Update the selected item
                });
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Convert")),
            const SizedBox(
              height: 16,
            ),
            const Text('54.24')
          ],
        ),
      ),
    );
  }
}
