import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'globals.dart' as globals;

class SubscribePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Berlangganan"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        "AYO BERLANGGANAN",
                        style: TextStyle(fontSize: 24),
                      )),
                  RadioButtonGroup(labels: <String>[
                    "Rp 140.000",
                    "Rp 1.400.000",
                  ], onSelected: (String selected) => print(selected)),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ButtonTheme(
                      
                      minWidth: double.infinity,
                      child: RaisedButton(
                        child: Text(
                          "BAYAR",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          globals.isSubscribe = true;
                          Navigator.pop(context, false);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
