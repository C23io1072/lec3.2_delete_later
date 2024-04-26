import 'package:flutter/material.dart';
import 'package:sem2/screens/lecture3.2/aspect_fractionally_sized.dart';
import 'package:sem2/screens/lecture3.2/container_text.dart';
import 'package:sem2/screens/lecture3.2/expanded_widget.dart';
import 'package:sem2/screens/lecture3.2/lecScreen/lec32_part2_screen.dart';
import 'package:sem2/screens/lecture3.2/row_column.dart';
import 'package:sem2/screens/lecture3.2/scrolling_grid_view.dart';
import 'package:sem2/screens/lecture3.2/scrolling_list.dart';
import 'package:sem2/screens/lecture3.2/scrolling_list1.dart';
import 'package:sem2/screens/lecture3.2/scrolling_list2.dart';
import 'package:sem2/screens/lecture3.2/scrolling_page_view.dart';
import 'package:sem2/screens/lecture3.2/scrolling_single_child.dart';
import 'package:sem2/screens/lecture3.2/sizedBox_align.dart';
import 'package:sem2/screens/lecture3.2/stack_widget.dart';
import 'package:sem2/screens/lecture3.2/test_stateful.dart';
import 'package:sem2/screens/lecture3.2/wrap_types.dart';

class Lec32Part1Screen extends StatelessWidget {
  const Lec32Part1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lecture3.2 Part1 Screen'),
          centerTitle: false,
          //leading: const Icon(Icons.menu),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Lec32Part2Screen()),
                  );
                },
                icon: const Icon(Icons.arrow_circle_right_outlined))
          ],
        ),
        body: const SingleChildScrollView(
            child: Column(
          children: [
            const ContainerText(),
            const SizedBoxAlign(),
            const AspectRatioFractionallySized(),
            const ExpandedWidget(),
            const RowColumn(),
            const WrapTypes(),
            const StackWidget(),
            const ScrollSingleChild(),
            //const ScrollListViewTest(),
            Text('SCROLLING: ListView'),
            const ScrollList2(),
            Text('SCROLLING: GridView'),
            const ScrollGridView(),
            Text('SCROLLING: PageView'),
            SizedBox(height: 20),
            const ScrollPageView(),
            const ContainerText(),
          ],
        )));
  }
}
