import 'package:coffeshopapp/const.dart';
import 'package:coffeshopapp/icons/my_flutter_app_icons.dart';
import 'package:coffeshopapp/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/4,
            color: lightBrown,
            child: Icon(widget.coffee.coffeeIcon, size: 120, color: brown),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.coffee.name,
                        style: TextStyle(letterSpacing: 2,fontFamily: 'Raleway',
                            fontSize: 20, color: Colors.brown.shade800, fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text(
                      "${widget.coffee.price} Da",
                      style: TextStyle(fontSize: 18,fontFamily: 'Raleway',color: Colors.grey.shade700),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("1", style: TextStyle(color: Colors.brown.shade800,fontFamily: 'Raleway',fontSize: 26)),
                    SizedBox(width: 20),
                    OutlineButton(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                      onPressed: () {},
                      child: Icon(Icons.remove),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30), bottomLeft: Radius.circular(30))),
                    ),
                    SizedBox(width: 7),
                    OutlineButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      child: Icon(Icons.add),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30), topRight: Radius.circular(30))),
                      borderSide: BorderSide(color: Colors.grey.shade600),
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
                Text("Size", style: TextStyle(fontFamily: 'Raleway',color: Colors.grey.shade700)),
                SizedBox(width: 50),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Text("Sugar", style: TextStyle(fontFamily: 'Raleway',color: Colors.grey.shade700)),
                SizedBox(width: 40),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.indeterminate_check_box,color: Colors.grey.shade400),
                        SizedBox(width: 50),
                        Icon(Icons.check_box_outline_blank,color: Colors.grey.shade400),
                        SizedBox(width: 50),
                        Row(
                          children: <Widget>[
                            Icon(Icons.check_box_outline_blank,color: Colors.brown.shade800),
                            Icon(Icons.check_box_outline_blank,color: Colors.brown.shade800),
                          ],
                        ),
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
                Text("Additions", style: TextStyle(fontFamily: 'Raleway',color: Colors.grey.shade700)),
                SizedBox(width: 14),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.cake,color: Colors.grey.shade400),
                        SizedBox(width: 50),
                        Icon(FontAwesomeIcons.iceCream,color: Colors.grey.shade400),
                        SizedBox(width: 65),
                        Icon(Icons.cloud,color: Colors.white),
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
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Total:",style: TextStyle(fontFamily: 'Raleway',color: darkBrown,fontSize: 28)),
                Text("${widget.coffee.price} Da",style: TextStyle(fontFamily: 'Raleway',color: Colors.brown.shade800,fontSize: 28,fontWeight: FontWeight.bold)),
            ],),
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(55, 15, 55, 15),
                      onPressed: () {},
                      child: Text(
                        "Add to cart",
                        style: TextStyle(fontFamily: 'Raleway',color: Colors.white),
                      ),
                      color: darkBrown,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
