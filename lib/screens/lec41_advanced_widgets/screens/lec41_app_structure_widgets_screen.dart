import 'package:flutter/material.dart';
import 'package:sem2/screens/lec41_advanced_widgets/widgets/a1_bottom_navigation_bar.dart';

class AppStructureWidgetsScreen extends StatelessWidget {
  const AppStructureWidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lecture3.2 Part1 Screen'),
          centerTitle: false,
          //leading: const Icon(Icons.menu),
          actions: [
            IconButton(
                onPressed: () {},
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const Lec32Part2Screen()),
                //   );
                // },
                icon: const Icon(Icons.arrow_circle_right_outlined))
          ],
        ),
        body: const SingleChildScrollView(
            child: Column(
          children: [
            Text('App structure widgets'),
            const BtmNavigationBar(),
          ],
        )));
  }
}
