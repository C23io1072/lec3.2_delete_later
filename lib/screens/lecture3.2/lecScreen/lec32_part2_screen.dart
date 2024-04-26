import 'package:flutter/material.dart';
import 'package:sem2/screens/lecture3.2/lecScreen/lec32_part3_screen.dart';
import 'package:sem2/screens/lecture3.2/row_column.dart';

class Lec32Part2Screen extends StatelessWidget {
  const Lec32Part2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lecture3.2 Part2 Screen'),
        centerTitle: false,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Lec32Part3Screen()),
                );
              },
              icon: const Icon(Icons.arrow_circle_right_outlined))
        ],
      ),
      body: Column(children: [
        const RowColumn(),
      ]),
    );
  }
}
