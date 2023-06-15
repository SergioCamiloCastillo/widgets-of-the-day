import 'package:flutter/material.dart';
import 'package:widgetsoftheday/square.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List posts = ["Post 1", "Post 2", "Post 3", "Post 4"];
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blueGrey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blueGrey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blueGrey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blueGrey),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blueGrey),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              //physics: AlwaysScrollableScrollPhysics(),
              //children: [Square(), Square(), Square(), Square()],
              itemCount: posts.length,
              itemBuilder: (context, index) => Square(title: posts[index]),
            ),
          ),
        ],
      ),
    ));
  }
}
