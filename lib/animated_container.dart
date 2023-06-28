import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double boxHeight = 100;
  double boxWidth = 100;
  double boxX = -1;
  double boxY = -1;
  var boxColor = Colors.deepPurple;

  void _expandedBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }

  void _changeColor() {
    setState(() {
      boxColor = Colors.pink;
    });
  }

  void _changePosition() {
    setState(() {
      boxX = 0;
      boxY = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changePosition,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Center(
            child: AnimatedContainer(
          duration: Duration(seconds: 2),
          alignment: Alignment(boxX, boxY),
          curve: Curves.decelerate,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple,
          ),
          // alignment: Alignment(-1,-1),
          // height: boxHeight,
          // width: boxWidth,
          // color: boxColor,
        )),
      ),
    );
  }
}
