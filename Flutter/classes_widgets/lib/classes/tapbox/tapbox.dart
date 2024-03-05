import 'package:flutter/material.dart';

class TapBoxA extends StatefulWidget {
  const TapBoxA({super.key});

  @override
  State<TapBoxA> createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapBoxA> {
  bool _active = false;

  void _onTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            color: _active ? Colors.green[500] : Colors.grey[500]),
        child: Center(child: Text(_active ? "Active" : "Inactive")),
      ),
    );
  }
}
