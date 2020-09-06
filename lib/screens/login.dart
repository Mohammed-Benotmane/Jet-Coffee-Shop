import 'package:coffeshopapp/const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 70, bottom: 30),
            child: Container(
              height: MediaQuery.of(context).size.height * .45,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/coffeshop.jpg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Text(
            "Get the best coffee in Algeria!",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: Colors.brown),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(55, 15, 55, 15),
                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: darkBrown,
                    )),
                OutlineButton(
                  padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
                  onPressed: () {},
                  child: Text(
                    "Log In",
                    style: TextStyle(color: darkBrown),
                  ),
                  borderSide: BorderSide(color: darkBrown),
                  shape: StadiumBorder(),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: OutlineButton.icon(
              padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.facebookF, size: 20, color: facebookColor),
              label: Text(
                "Connect with Facebook",
                style: TextStyle(color: facebookColor),
              ),
              borderSide: BorderSide(color: facebookColor),
              shape: StadiumBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
