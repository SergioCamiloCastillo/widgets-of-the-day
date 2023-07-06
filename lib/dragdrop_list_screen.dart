import 'package:flutter/material.dart';

class DragDropListScreen extends StatefulWidget {
  const DragDropListScreen({super.key});

  @override
  State<DragDropListScreen> createState() => _DragDropListScreenState();
}

class _DragDropListScreenState extends State<DragDropListScreen> {
  final List myTiles = ["A", "B", "C", "D", "E", "F", "G", "H", "I"];

  void updateMyTiles(int oldIndex, int newIndex) {
    final tile = myTiles.removeAt(oldIndex);
    myTiles.insert(newIndex, tile);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        appBar: AppBar(
          
          title: Text("Screen drag and drop"),
        ),
        body: ReorderableListView(children: [
          for (final tile in myTiles)
            ListTile(
              key: ValueKey(tile),
              title: Text(tile),
            )
        ], onReorder: ((oldIndex, newIndex) => updateMyTiles)));
  }
}
