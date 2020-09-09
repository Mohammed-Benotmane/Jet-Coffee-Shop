import 'package:coffeshopapp/const.dart';
import 'package:coffeshopapp/icons/my_flutter_app_icons.dart';
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
                height: MediaQuery.of(context).size.height * .4,
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
                        style: TextStyle(
                            fontSize: 16, color: Colors.brown.shade800, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text(
                      "${widget.coffee.price} Da",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("1", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 7),
                    OutlineButton(
                      onPressed: () {},
                      child: Icon(Icons.remove),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))),
                    ),
                    SizedBox(width: 7),
                    OutlineButton(
                      onPressed: () {},
                      child: Icon(Icons.add),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30), topRight: Radius.circular(30))),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(height: 3),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Text("Size", style: TextStyle(color: Colors.grey.shade700)),
                SizedBox(width: 50),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(widget.coffee.coffeeIcon,color: Colors.grey.shade400),
                    SizedBox(width: 50),
                    Icon(widget.coffee.coffeeIcon,color: Colors.brown.shade800,size: 30),
                    SizedBox(width: 50),
                    Icon(widget.coffee.coffeeIcon,color: Colors.grey.shade400,size: 36),
                  ],
                ))
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(height: 3),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Text("Sugar", style: TextStyle(color: Colors.grey.shade700)),
                SizedBox(width: 40),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.indeterminate_check_box,color: Colors.grey.shade400),
                        SizedBox(width: 50),
                        Icon(Icons.check_box_outline_blank,color: Colors.grey.shade400),
                        SizedBox(width: 50),
                        Icon(Icons.check_box_outline_blank,color: Colors.brown.shade800),
                        Icon(Icons.check_box_outline_blank,color: Colors.brown.shade800),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(height: 3),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: <Widget>[
                Text("Additions", style: TextStyle(color: Colors.grey.shade700)),
                SizedBox(width: 14),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.cake,color: Colors.grey.shade400),
                        SizedBox(width: 50),
                        Icon(Icons.cloud,color: Colors.grey.shade400),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(height: 3),
          ),
          SizedBox(height: 20),
          Row()
        ],
      ),
    );
  }
}
