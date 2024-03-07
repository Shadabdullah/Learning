import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Input Form "),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
            controller: myController,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    final text = myController.text;
    print('this is Latest text $text');
  }
}
