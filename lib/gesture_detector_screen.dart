import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {
  const GestureDetectorScreen({super.key});

  @override
  State<GestureDetectorScreen> createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  int numberOfTimesTapped = 0;

  void _increaseNumber() {
    setState(() {
      numberOfTimesTapped++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Hizo ${numberOfTimesTapped.toString()} clicks",
                style: TextStyle(fontSize: 30),
              ),
              GestureDetector(
                onTap: _increaseNumber,
                child: Container(
                    color: Colors.green[200],
                    child: Text(
                      "Haz click aqui",
                      style: TextStyle(fontSize: 30),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
