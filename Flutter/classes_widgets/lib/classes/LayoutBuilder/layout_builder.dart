import 'package:flutter/material.dart';

class LayoutBuilderApp extends StatelessWidget {
  const LayoutBuilderApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LayoutBuilderApp')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            print(constraints);
            print(context);
            return _buildWideContainer();
          } else {
            print(context);
            print(constraints);
            return _buildNormalContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.red,
      )
    );
  }

  Widget _buildWideContainer() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.redAccent,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
