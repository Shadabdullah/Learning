import 'package:flutter/material.dart';

class CustomScrollSliver extends StatefulWidget {
  const CustomScrollSliver({super.key});

  @override
  State<CustomScrollSliver> createState() => _CustomScrollSliverState();
}

class _CustomScrollSliverState extends State<CustomScrollSliver> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Press on the plus to add items above and below'),
        leading: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              top.add(-top.length - 1);
              bottom.add(bottom.length);
            });
          },
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                height: 100,
                alignment: Alignment.center,
                color: Colors.green[200 + top[index] % 4 * 100],
                child: Text('Item ${top[index]}'),
              );
            }, childCount: top.length),
          )
        ],
      ),
    );
  }
}
