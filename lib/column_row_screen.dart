import 'package:flutter/material.dart';

class ColumnRowScreen extends StatelessWidget {
  const ColumnRowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Container(width: 100, color: Colors.deepPurple)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepPurple[400],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepPurple[200],
              )
            ]),
      ),
    );
  }
}
