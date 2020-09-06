import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
      body: Column(
        children: <Widget>[
          
        ],
      ),
    );
  }
}
