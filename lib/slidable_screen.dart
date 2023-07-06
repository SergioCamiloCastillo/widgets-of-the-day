import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableScreen extends StatelessWidget {
  const SlidableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(motion: StretchMotion(), children: [
            SlidableAction(
              flex: 1,
              backgroundColor: Colors.green,
              onPressed: (context) {},
              icon: Icons.phone,
            ),
            SlidableAction(
              flex: 2,
              backgroundColor: Colors.blue,
              onPressed: (context) {},
              icon: Icons.chat,
            )
          ]),
          endActionPane: ActionPane(motion: StretchMotion(), children: [
            SlidableAction(
              backgroundColor: Colors.red,
              onPressed: (context) {},
              icon: Icons.delete,
            ),
          ]),
          child: Container(
            color: Colors.grey[300],
            child: ListTile(
              title: Text("Sergio Castillo"),
              subtitle: Text('+57 3132719366'),
              leading: Container(
                height: double.infinity,
                child: Icon(
                  Icons.person,
                  size: 40,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
