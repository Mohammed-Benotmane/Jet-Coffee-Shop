import 'package:coffeshopapp/const.dart';
import 'package:coffeshopapp/models/coffee.dart';
import 'package:flutter/material.dart';

class MenuDetail extends StatefulWidget {
  Coffee coffee;

  MenuDetail({this.coffee});

  @override
  _MenuDetailState createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
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
          "Preferences",
          style: TextStyle(fontFamily: 'Raleway', color: Colors.brown),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * .45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/empty.jpg"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Positioned(
                child: Icon(widget.coffee.coffeeIcon, size: 80, color: brown),
                bottom: 0,
                top: 0,
                left: 0,
                right: 0,
              ),
            ],
          ),
          Row(
            children: <Widget>[],
          ),
        ],
      ),
    );
  }
}
