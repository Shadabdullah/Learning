import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: const Text('Animation'),
      ),
      body: Center(
        child: Container(
          height: 200.0, // Use double precision for consistency
          width: 200.0, // Use double precision for consistency
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(10.0), // Set desired corner radius
            color: Colors.green[100],
          ),
          child: Center(
            // Center the text within the container
            child: Text(
              "Animation",
              style: TextStyle(
                // Optional: style the text
                fontSize: 16.0, // Set preferred font size
                color: Colors.black, // Set preferred text color
              ),
            ),
          ),
        ),
      ),
    );
  }
}
