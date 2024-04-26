import 'package:flutter/material.dart';

class ScrollListViewTest extends StatefulWidget {
  const ScrollListViewTest({super.key});

  @override
  State<ScrollListViewTest> createState() => _ScrollListViewTestState();
}

class _ScrollListViewTestState extends State<ScrollListViewTest> {
  final listItem = List.generate(1000, (index) => index);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return Container(
            height: 720,
            color: Colors.grey[300],
            child: Center(child: Text(listItem[index].toString())));
        // return ListTile(
        //   title: Text(listItem[index].toString()),
        // );
      }),
    );
  }
}
