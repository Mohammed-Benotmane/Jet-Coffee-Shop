import 'package:coffeshopapp/const.dart';
import 'package:coffeshopapp/models/coffee.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/S/Documents/Flutter%20projects/coffe_shop_app/lib/icons/my_flutter_app_icons.dart';

class MenuList extends StatefulWidget {
  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  List<Coffee> coffees = [
    Coffee(coffeeIcon: Icon(MyFlutterApp.cup, size: 20, color: brown), name: "Espresso", price: 500),
    Coffee(coffeeIcon: Icon(MyFlutterApp.beer, size: 20, color: brown), name: "Cappuccino", price: 600),
    Coffee(coffeeIcon: Icon(MyFlutterApp.coffee_cup, size: 20, color: brown), name: "Macciato", price: 350),
    Coffee(coffeeIcon: Icon(MyFlutterApp.coffee_mug, size: 20, color: brown), name: "Latte", price: 150),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Divider(height: 1, color: Colors.grey.shade400),
          ListView.builder(
            shrinkWrap: true,
            itemCount: coffees.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(coffees[index].name),
                leading: coffees[index].coffeeIcon,
                trailing: Icon(Icons.keyboard_arrow_right),
              );
            },
          ),
        ],
      ),
    );
  }
}
