import 'package:flutter/material.dart';

class ScrollList extends StatelessWidget {
  const ScrollList({super.key});

  @override
  Widget build(BuildContext context) {
    final listItem = List.generate(50, (index) => index);
    return Column(children: [
      ListView.builder(
        itemBuilder: ((context, index) {
          return Container(
              height: 500,
              color: Colors.grey[300],
              child: Center(child: Text(listItem[index].toString())));
          // return ListTile(
          //   title: Text(listItem[index].toString()),
          // );
        }),
      )
    ]);
  }
}
