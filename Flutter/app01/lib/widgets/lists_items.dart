import 'package:app01/listitem.dart';
import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  final List<NestedListItems> items;
  const ListItems({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      final item = items[index];
      return Column(
        children: [
          ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubTitle(context))
        ],
      );
    });
  }
}
