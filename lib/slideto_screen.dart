import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlideToScreen extends StatelessWidget {
  const SlideToScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SlideAction(
            borderRadius: 4,
            elevation: 0,
            innerColor: Colors.deepPurple,
            text: "Deslize para confirmar",
            textStyle: TextStyle(fontSize: 18, color: Colors.white),
            sliderRotate: false,
            sliderButtonIcon: Icon(
              Icons.lock_open,
              color: Colors.white,
            ),
            outerColor: Colors.deepPurple[200],
            onSubmit: () {
              print("se desbloquero");
            },
          ),
        ),
      ),
    );
  }
}
