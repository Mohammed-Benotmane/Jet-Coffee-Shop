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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.coffee.name,
                        style:
                            TextStyle(fontSize: 16, color: Colors.brown.shade800, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text(
                      "${widget.coffee.price} Da",
                      style: TextStyle(color: brown),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("1", style: TextStyle(fontSize: 20)),
                    OutlineButton(
                      onPressed: () {},
                      child: Icon(Icons.remove),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30))),
                    ),
                    SizedBox(width: 7),
                    OutlineButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),topRight: Radius.circular(30))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
