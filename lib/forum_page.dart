import 'package:flutter/material.dart';

class ForumPage extends StatelessWidget {
  ForumPage({Key key}) : super(key: key);
  static const PrimaryColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: PrimaryColor,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: Text("Forum"),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: "Yang Anda Ikuti",
                  ),
                  Tab(
                    text: "Yang Tersedia",
                  )
                ],
              )),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text("Text1"),
              ),
              Center(
                child: Text("Text2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
