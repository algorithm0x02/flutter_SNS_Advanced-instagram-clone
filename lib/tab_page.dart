import 'package:flutter/material.dart';
import 'package:instagram_clon_by_som/account_page.dart';
import 'package:instagram_clon_by_som/home_page.dart';
import 'package:instagram_clon_by_som/search_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    List _pages = [
      HomePage(),
     // Text('page2'),
      SearchPage(),
      AccountPage(),
    ];
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'account'),
          ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
