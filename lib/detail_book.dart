import 'package:flutter/material.dart';
import 'library_page.dart';
import 'subscribe_page.dart';

class DetailBook extends StatelessWidget {
  final Book book;

  DetailBook({Key key, @required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: AppBar(
              // title: Text("data"),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(48.0),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      book.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  )),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context, false);
                },
              ),
            )),
        body: Container(
          margin: EdgeInsets.fromLTRB(30, 15, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ButtonTheme(
                  minWidth: double.infinity,
                  child: RaisedButton(
                    child: Text(
                      "Berlangganan",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SubscribePage())
                      );
                    },
                  ),
                ),
              ),
              Text(
                "Deskripsi Buku",
                style: TextStyle(fontSize: 20),
              ),
              Text(book.description)
            ],
          ),
        ),
      ),
    );
  }
}
