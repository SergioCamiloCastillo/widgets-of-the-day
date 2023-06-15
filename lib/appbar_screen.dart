import 'package:flutter/material.dart';
import 'package:widgetsoftheday/expanded_screen.dart';
import 'package:widgetsoftheday/image_screen.dart';

class AppbarScreen extends StatelessWidget {
  const AppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
        title: Text("A P P B A R"),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.arrow_back_rounded),
        // ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.list_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person))
        ],
      ),
      drawer: Drawer(
        child: Container(
            color: Colors.deepPurple[100],
            child: ListView(
              children: [
                DrawerHeader(
                    child: Center(
                        child: Text(
                  "L O G O",
                  style: TextStyle(fontSize: 35),
                ))),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    "Page 1",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ExpandedScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text(
                    "Page 2",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ImageScreen()));
                  },
                )
              ],
            )),
      ),
    );
  }
}
