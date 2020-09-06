import 'package:coffeshopapp/const.dart';
import 'package:coffeshopapp/screens/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
          "Login",
          style: TextStyle(fontFamily: 'Raleway',color: Colors.brown),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 80, 30, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: SvgPicture.asset(
                      "assets/coffee.svg",
                      height: MediaQuery.of(context).size.height/5,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Welcome back!",
                    style: TextStyle(fontFamily: 'Raleway',fontSize: 30, fontWeight: FontWeight.w400, color: Colors.brown),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Email", style: TextStyle(fontFamily: 'Raleway',color: Colors.grey.shade600)),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: darkBrown),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: darkBrown),
                      ),
                    ),
                    cursorColor: darkBrown,
                  ),
                  SizedBox(height: 50),
                  Text("Password", style: TextStyle(fontFamily: 'Raleway',color: Colors.grey.shade600)),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: darkBrown),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: darkBrown),
                      ),
                    ),
                    cursorColor: darkBrown,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Forgot password?",
                        style: TextStyle(fontFamily: 'Raleway',color: darkBrown, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: FlatButton(
                            padding: EdgeInsets.fromLTRB(55, 15, 55, 15),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return Menu();
                              }));
                            },
                            child: Text(
                              "Log In",
                              style: TextStyle(fontFamily: 'Raleway',color: Colors.white),
                            ),
                            color: darkBrown,
                          )),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don\'t have an account?", style: TextStyle(fontFamily: 'Raleway',color: Colors.grey.shade600)),
                      Text(
                        " Register",
                        style: TextStyle(fontFamily: 'Raleway',color: darkBrown, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
