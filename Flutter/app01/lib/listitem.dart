import'package:flutter/material.dart' ;

abstract class NestedListItems {
  Widget buildTitle(BuildContext context);

  Widget buildSubTitle(BuildContext context);
}

final items = List<NestedListItems>.generate(
    1000,
    (index) => index % 6 == 0
        ? HeadingItems('Heading $index')
        : ManageItems('Sender $index', 'Message body $index'));

class HeadingItems implements NestedListItems {
  final String headings;

  HeadingItems(this.headings);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      headings,
      style: const TextStyle( color: Colors.black, fontSize: 35),
    );
  }

  @override
  Widget buildSubTitle(BuildContext context) => const SizedBox.shrink();
}

class ManageItems implements NestedListItems {
  final String sender;
  final String body;

  ManageItems(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender, style: const TextStyle(color: Colors.red),);

  @override
  Widget buildSubTitle(BuildContext context) => Text(body, style: const TextStyle(color: Colors.green),);
}
