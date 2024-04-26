import 'package:flutter/material.dart';
import 'package:sem2/screens/lecture3.2/lecScreen/lec32_part4_screen.dart';
import 'package:sem2/screens/lecture3.2/wrap_types.dart';

class Lec32Part3Screen extends StatelessWidget {
  const Lec32Part3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lecture3.2 Part3 Screen'),
        centerTitle: false,
        //leading: const Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Lec32Part4Screen()),
                );
              },
              icon: const Icon(Icons.arrow_circle_right_outlined))
        ],
      ),
      body: const Column(children: [const WrapTypes()]),
    );
  }
}
