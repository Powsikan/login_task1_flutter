import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignupPageState();
  }
}

class SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'images/background.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 345.0),
            padding: const EdgeInsets.all(25.0),
            width: size.width,
            height: 340,
            color: Colors.blueAccent.shade700,
            child: new ListView(
              padding: const EdgeInsets.all(5.0),
              children: <Widget>[
                new TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle:
                          TextStyle(color: Colors.white, fontSize: 17.9)),
                ),
                new TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle:
                          TextStyle(color: Colors.white, fontSize: 17.9)),
                ),
                new Padding(padding: EdgeInsets.all(30.0)),
                new Container(
                  alignment: Alignment.center,
                  child: new RaisedButton(
                    onPressed: () => debugPrint("login"),
                    color: Colors.transparent,
                    child: new Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 16.9,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
