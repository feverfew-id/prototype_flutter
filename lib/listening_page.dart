import 'package:flutter/material.dart';

class ListeningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BOOK"),
          leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){},),
        ),      
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(30),
                color: Colors.black,
              ),
              flex: 5,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 30,right: 30),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          child: Text("Teks"),
                          onPressed: (){},
                        )
                        ,
                        IconButton(
                          icon: Icon(Icons.rotate_left),
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(Icons.play_arrow),
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(Icons.rotate_right),  
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(Icons.info),
                          onPressed: (){},
                        )

                      ],
                    )
                  ],
                ),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}