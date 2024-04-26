import 'package:flutter/material.dart';

class BtmNavigationBar extends StatelessWidget {
  const BtmNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        width: 400,
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 3, color: Colors.red))),
        //color: Colors.grey[200],
        child: Column(
            //children: listItem,
            children: []));
  }
}
