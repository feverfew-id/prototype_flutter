import 'package:flutter/material.dart';
import 'package:prototype_flutter/detail_book.dart';

class Book {
  final String title;
  final String description;
  Book(this.title, this.description);
}

class LibraryPage extends StatelessWidget {
  LibraryPage({Key key}) : super(key: key);

  var books = List<Book>.generate(
    20,
    (i) => Book(
          'Book $i',
          'A description of what needs to be done for Book $i',
        ),
  );  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Library"),
        ),
        body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context,index) {
          return Card( //                           <-- Card widget
            child: ListTile(
              leading: Icon(Icons.book),
              title: Text(books[index].title),
              subtitle: Text(books[index].description),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                Navigator.push(
                  context,
                MaterialPageRoute(
                  builder: (context) => DetailBook(book: books[index]),
                ),
                );
              },
            ),
          );
        },
      ),
      ),
    );
  }
}

