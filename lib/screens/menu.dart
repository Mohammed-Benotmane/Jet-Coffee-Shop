import 'package:coffeshopapp/const.dart';
import 'package:coffeshopapp/screens/menu_list.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    MenuList(),
    MenuList(),
    MenuList(),
    MenuList(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.brown,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Menu",
          style: TextStyle(fontFamily: 'Raleway',color: Colors.brown),
        ),
        centerTitle: true,
      ),
      body:Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor:  Colors.brown.shade300,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_drink),
              title: Text("")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              title: Text("")
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.brown.shade800,
        onTap: _onItemTapped,
      ),
    );
  }
}
