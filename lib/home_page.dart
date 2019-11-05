import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: Scaffold(
          
          appBar: AppBar(
            title: Text("Home"),
            leading: Icon(Icons.settings),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                Container(
                  height: 200,
                  color: Colors.blueGrey,
                  margin: EdgeInsets.only(bottom: 30),
                ),
                Text("Untuk Anda"),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 160.0,
                        color: Colors.red,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.green,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Text("Terpopuler"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 160.0,
                        color: Colors.red,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.green,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        width: 160.0,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            )
            
            // children: <Widget>[
            //   Flexible(
            //     flex: 3,
            //     child: Container(
            //       margin: EdgeInsets.all(30),
            //       color: Colors.blue,
            //     ),
            //   ),
            //   Flexible(
            //     flex: 2,
            //     child: Container(
            //       // margin: EdgeInsets.symmetric(vertical: 20.0),
            //       margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
            //       height: 200.0,
            //       child: ListView(
            //         scrollDirection: Axis.horizontal,
            //         children: <Widget>[
            //           Container(
            //             width: 160.0,
            //             color: Colors.lightGreen,
            //           ),
            //           Container(
            //             width: 160.0,
            //             color: Colors.blue,
            //           ),
            //           Container(
            //             width: 160.0,
            //             color: Colors.green,
            //           ),
            //           Container(
            //             width: 160.0,
            //             color: Colors.yellow,
            //           ),
            //           Container(
            //             width: 160.0,
            //             color: Colors.orange,
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),

            //   Flexible(
            //     flex: 2,
            //     child: Container(
            //       margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
            //       height: 200.0,
            //       child: ListView(
            //         scrollDirection: Axis.horizontal,
            //         children: <Widget>[
            //           Container(
            //             width: 160.0,
            //             color: Colors.red,
            //           ),
            //           Container(
            //             width: 160.0,
            //             color: Colors.blue,
            //           ),
            //           Container(
            //             width: 160.0,
            //             color: Colors.green,
            //           ),
            //           Container(
            //             width: 160.0,
            //             color: Colors.yellow,
            //           ),
            //           Container(
            //             width: 160.0,
            //             color: Colors.orange,
            //           ),
            //         ],
            //       ),
            //     ),
            //   )
            // ],
          ),
        ));
  }
}
