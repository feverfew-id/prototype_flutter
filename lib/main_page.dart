import 'package:flutter/material.dart';
import 'package:prototype_flutter/forum_page.dart';
import 'package:prototype_flutter/home_page.dart';
import 'package:prototype_flutter/library_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 1;

static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static  List<Widget> _widgetOptions = <Widget>[
  LibraryPage(key: PageStorageKey('Page1'),),
  HomePage(key: PageStorageKey('Page2'),),
  ForumPage(key: PageStorageKey('Page3'),)
];


  // final List<Widget> _children = [
  //   Text("BOOKMARK"),
  //   Text("HOME"),
  //   Text("FORUM"),
  //   // ContentMain(Colors.white),
  //   // ContentMain(Colors.deepOrange),
  //   // ContentMain(Colors.green)
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
      child: _widgetOptions.elementAt(_currentIndex),
    ),// new
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            title: Text('Bookmark'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.group), title: Text('Group'))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
