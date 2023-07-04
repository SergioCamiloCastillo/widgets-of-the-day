import 'package:flutter/material.dart';

class InputKeyboardScreen extends StatefulWidget {
  const InputKeyboardScreen({super.key});

  @override
  State<InputKeyboardScreen> createState() => _InputKeyboardScreenState();
}

class _InputKeyboardScreenState extends State<InputKeyboardScreen> {
  final _textController = TextEditingController();
  String userPost = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  color: Colors.green[200],
                  child: Center(
                    child: Text(userPost),
                  ),
                ),
                TextField(
                  controller: _textController,
                  onChanged: (value) {
                    setState(() {
                      userPost = value;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: '¿Que estas pensando?',
                      border: OutlineInputBorder(),
                      suffix: IconButton(
                          onPressed: () {}, icon: Icon(Icons.clear))),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      userPost = _textController.text;
                    });
                  },
                  color: Colors.blue,
                  child: Text(
                    'Enviar',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
