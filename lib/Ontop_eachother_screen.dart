import 'package:flutter/material.dart';

class OnTopEachOtherScreen extends StatelessWidget {
  const OnTopEachOtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(alignment: AlignmentDirectional.topEnd, children: [
        Container(
          color: Colors.pink[100],
          alignment: Alignment(0, 1),
          child: Container(
            height: 200,
            width: 200,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.pink[300]),
          ),
        )
      ]),
    ));
    // Center(
    //   child: Stack(
    //     alignment: AlignmentDirectional.topCenter,
    //     children: [
    //       Container(
    //         height: 300,
    //         width: 300,
    //         color: Colors.blue[300],
    //       ),
    //       Container(
    //         height: 200,
    //         width: 200,
    //         color: Colors.blue[400],
    //       ),
    //       Container(
    //         height: 100,
    //         width: 100,
    //         color: Colors.blue[600],
    //       )
    //     ],
    //   ),
    // ),
  }
}
