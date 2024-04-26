import 'package:flutter/material.dart';
import 'package:sem2/screens/lecture3.2/lecScreen/lec32_part5_screen.dart';

class Lec32Part4Screen extends StatelessWidget {
  const Lec32Part4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lecture3.2 Part4 Screen'),
        centerTitle: false,
        //leading: const Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Lec32Part5Screen()),
                );
              },
              icon: const Icon(Icons.arrow_circle_right_outlined))
        ],
      ),
      body: const Column(children: []),
    );
  }
}
