import 'package:flutter/material.dart';

class ScrollList1 extends StatelessWidget {
  const ScrollList1({super.key});

  @override
  Widget build(BuildContext context) {
    final listItem = List.generate(50, (index) => index);
    return Container(
        height: 200,
        color: Colors.grey[400],
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: listItem.map((e) {
            return Container(
                height: 60,
                width: 60,
                color: Colors.green,
                child: Text('hello'));
          }).toList(),
        ));
  }
}
