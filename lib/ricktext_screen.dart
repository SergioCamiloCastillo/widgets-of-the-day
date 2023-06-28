import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(height: 350, color: Colors.grey),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Sergio Castillo",
                style: TextStyle(
                  color: Colors.blue,
                )),
            TextSpan(
                text:
                    "Nulla fringilla quam in orci malesuada, nec porttitor orci tincidunt. Suspendisse potenti. Phasellus rutrum odio at velit molestie auctor. Sed mattis, felis quis efficitur euismod, lectus dolor volutpat magna, vel suscipit felis enim non nunc. Sed vel mi ut risus ultrices lobortis. Duis in blandit lorem. Quisque vulputate neque urna, at iaculis orci feugiat vel. Suspendisse convallis tortor elementum risus sollicitudin porta. Aenean dignissim facilisis velit, mattis hendrerit tortor aliquet nec. Quisque pulvinar quam leo, sed hendrerit nulla viverra non. Curabitur ac mauris arcu.",
                style: TextStyle(color: Colors.black))
          ])),
        )
      ],
    ));
  }
}
