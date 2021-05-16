import 'package:flutter/material.dart';
import 'package:demo/homePage.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List _widgetOptions = [
    HomePage(),
    Text(
      ' Statement',
      style: optionStyle,
    ),
    ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined,),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent,
        onTap: _onItemTapped,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.blue,
        iconSize: 30.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 35.0,color: Colors.white,),
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
