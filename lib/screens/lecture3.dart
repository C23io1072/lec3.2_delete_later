import 'package:flutter/material.dart';
import 'package:sem2/screens/lecture3.2/container_text.dart';

class LectureScreen extends StatelessWidget {
  const LectureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lecture Flutter!'),
      ),
      body: Center(
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContainerText(),
          ],
        ),
      ),
    );
  }
}
