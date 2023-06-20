import 'package:flutter/material.dart';
import 'package:widgetsoftheday/column_row_screen.dart';
import 'package:widgetsoftheday/gridview_screen.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Hola a todos"),
          ),
          body: Column(children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.orange,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.home),
                )
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: Center(
                    child: Text('primera vista'),
                  ),
                ),
                Container(
                  color: Colors.red,
                  child: Center(
                    child: 
                      GridViewScreen()
                    //Text('segunda vista'),
                  ),
                )
              ]),
            )
          ]),
        ));
  }
}
