import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
          flex: 1,
            child: Container(
              color: Colors.pink,
            ),
          ),
          Expanded(
             flex: 3,
            child: Container(
              color: Colors.blue,
            ),
          )
        ]),
      ),
    );
  }
}
