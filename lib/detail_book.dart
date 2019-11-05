import 'package:flutter/material.dart';
import 'library_page.dart';

class DetailBook extends StatelessWidget {
  final Book book;

  DetailBook({Key key, @required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(book.title),),
        body: Column(
          children: <Widget>[
            Text(book.description)
          ],
        ),
      ),
    );
  }
}