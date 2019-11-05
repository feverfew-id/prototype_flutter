import 'package:flutter/material.dart';
import 'package:prototype_flutter/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("MASUK"),
          RaisedButton(
            child: Text("Google"),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            },
          ),
          RaisedButton(
            child: Text("Facebook"),
            onPressed: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            },
          )
        ],
      ),
    ));
  }
}
