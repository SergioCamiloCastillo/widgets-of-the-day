import 'package:flutter/material.dart';
import 'package:widgetsoftheday/column_row_screen.dart';
import 'package:widgetsoftheday/expanded_screen.dart';
import 'package:widgetsoftheday/gridview_screen.dart';
import 'package:widgetsoftheday/image_screen.dart';
import 'package:widgetsoftheday/list_view_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void _navigateBottombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    ColumnRowScreen(),
    ExpandedScreen(),
    GridViewScreen(),
    ListViewScreen(),
    ImageScreen()
    // Center(
    //     child: Text(
    //   "Home page",
    //   style: TextStyle(fontSize: 40),
    // )),
    // Center(
    //     child: Text(
    //   "Home page 2",
    //   style: TextStyle(fontSize: 40),
    // )),
    // Center(
    //     child: Text(
    //   "Home page 3",
    //   style: TextStyle(fontSize: 40),
    // )),
    // Center(
    //     child: Text(
    //   "Home page 4",
    //   style: TextStyle(fontSize: 40),
    // )),
    // Center(
    //     child: Text(
    //   "Home page 5",
    //   style: TextStyle(fontSize: 40),
    // )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _navigateBottombar,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.view_column), label: "Column"),
            BottomNavigationBarItem(
                icon: Icon(Icons.expand), label: "Expanded"),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_3x3), label: "GridView"),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_outlined), label: "ListView"),
            BottomNavigationBarItem(icon: Icon(Icons.image), label: "Image"),
          ]),
    );
  }
}
