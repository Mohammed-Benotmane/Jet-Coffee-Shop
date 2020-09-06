import 'package:coffeshopapp/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        leading: Icon(Icons.keyboard_arrow_left,color: Colors.brown,),
        backgroundColor: Colors.white,
        title: Text("Login",style: TextStyle(color: Colors.brown),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30,80,30,30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Welcome back!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: Colors.brown),
            ),
            SizedBox(height: 30),
            Text("Email",style: TextStyle(color: darkBrown)),
            TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: darkBrown),
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
          ],
        ),
      ),
    );
  }
}
