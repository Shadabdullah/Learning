import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Added 'Key? key' parameter

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
  const HomePage({Key? key}) : super(key: key); // Added 'Key? key' parameter

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _numberForm = 0;
  final List<String> _imperial = [
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
    _numberForm = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: const Text(
          "Unit Conversion",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Value', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (input) {
                var rv = double.tryParse(input);
                if (rv != null) {
                  setState(() {
                    _numberForm = rv;
                  });
                }
              },
            ),
            Text((_numberForm == null) ? '' : _numberForm.toString()),
            const Text('From', style: TextStyle(fontWeight: FontWeight.bold)),
            DropdownButton(
              items: _imperial.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Implement your logic here when dropdown value changes
              },
            ),
            const SizedBox(
              height: 16,
            ),
            const Text('To', style: TextStyle(fontWeight: FontWeight.bold)),
            DropdownButton(
              items: _imperial.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Implement your logic here when dropdown value changes
              },
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
