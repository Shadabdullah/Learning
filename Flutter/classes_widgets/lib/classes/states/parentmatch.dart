import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;
  void _handleTapBoxChange(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Mix Match States"),
      ),
      body: Center(
        child: TapBoxC(
          active: _active,
          onChanged: _handleTapBoxChange,
        ),
      ),
    );
  }
}

class TapBoxC extends StatefulWidget {
  const TapBoxC({super.key, this.active = false, required this.onChanged});
  final bool active;
  final ValueChanged<bool> onChanged;
  @override
  State<TapBoxC> createState() => _TapBoxCState();
}

class _TapBoxCState extends State<TapBoxC> {
  bool _highLight = false;

  void _onTapCancel() {
    setState(() {
      _highLight = false;
    });
  }

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _highLight = true;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _highLight = false;
    });
  }

  void _onTap() {
    setState(() {
      widget.onChanged(!widget.active);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      onTapUp: _onTapUp,
      onTapDown: _onTapDown,
      onTapCancel: _onTapCancel,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            color: widget.active ? Colors.lightGreen[500] : Colors.grey[500],
            border: _highLight
                ? Border.all(color: Colors.teal[700]!, width: 3)
                : null),
        child: Center(
          child: Text(
            widget.active ? "Active" : "Inactive",
            style: const TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
