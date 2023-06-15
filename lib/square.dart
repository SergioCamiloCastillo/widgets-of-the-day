import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String title;
  const Square({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.deepOrange,
        child: Text(
          title,
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
