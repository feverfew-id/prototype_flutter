import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

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
            Text("AYO BERLANGGANAN"),
            RadioButtonGroup(
  labels: <String>[
    "Rp 140.000",
    "Rp 1.400.000",
  ],
  onSelected: (String selected) => print(selected)
)
          ],
        ),
      ),
    );
  }
}
