import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final listItem = [
      Container(
        width: 60,
        height: 60,
        color: Colors.amber,
      ),
      Positioned(
        top: 10,
        left: 10,
        child: Container(
          width: 60,
          height: 60,
          color: Colors.red,
        ),
      ),
      Positioned(
        top: 20,
        left: 20,
        child: Container(
          width: 60,
          height: 60,
          color: Colors.blue,
        ),
      )
    ];
    return Container(
      height: 200,
      //width: 800,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 3, color: Colors.red))),
      // color: Colors.grey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch, //12.15
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Stack: Lec 3.2-12.40!!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 100,
                  width: 150,
                  child: Stack(
                    children: listItem,
                  )),
            ],
          ),
          const VerticalDivider(
            width: 10,
            thickness: 2,
            indent: 20,
            endIndent: 500,
            color: Colors.black,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'IndexedStack: 12.40!!!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 80,
                  width: 100,
                  child: IndexedStack(
                    index: 2, //Toog garaar solino uu!!!
                    children: listItem,
                  )),
              Text(
                'LayoutBuilder: 12.40!!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 40,
                  width: 160, //Garaar soli!!
                  child: LayoutBuilder(builder: (container, constraint) {
                    return constraint.maxWidth <= 150
                        ? Text('<=150 !!!!')
                        : Text('>150 !!!!');
                  })),
            ],
          ),
        ],
      ),
    );
    //floatingActionButton: floa
  }
}
