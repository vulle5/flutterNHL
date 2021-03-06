import 'package:flutter/material.dart';

import 'package:nhl_compare/src/screens/CompareScreen.dart';
import 'package:nhl_compare/src/screens/HomeScreen.dart';
import 'package:nhl_compare/src/screens/PlayerScreen.dart';
import 'package:nhl_compare/src/services/playerService.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedItem = 0;
  final List<Widget> _navigationItems = [
    HomeScreen(),
    PlayerScreen(player: fetchPlayer()),
    CompareScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NHL Compare'),
        ),
        body: _navigationItems[_selectedItem],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) => setState(() => _selectedItem = index),
          currentIndex: _selectedItem,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Players"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz),
              title: Text("Compare"),
            ),
          ],
        ),
      ),
    );
  }
}
