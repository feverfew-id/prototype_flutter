import 'package:flutter/material.dart';
import 'package:prototype_flutter/main_page.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: Text("MASUK"),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: SizedBox(
              width: double.infinity,
              child: GoogleSignInButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }));
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: SizedBox(
              width: double.infinity,
              child: FacebookSignInButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            },
          )
            ),
          )
          
        ],
      ),
    ));
  }
}
