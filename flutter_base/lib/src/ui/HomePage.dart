import 'package:flutter/material.dart';
import 'package:flutter_base/src/ui/PhotosPage.dart';
import 'package:flutter_base/src/ui/PostPage.dart'; 
import 'package:flutter_base/src/ui/UserPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//select default page
  int _selectedPage = 0;
  final pageOption = [UserPage(), PhotosPage(), PostPage()];

  var v1 = BottomNavigationBarItem(
      icon: Icon(Icons.favorite, color: Colors.pink, size: 24.0),
      label: 'USERS');

  var v2 = BottomNavigationBarItem(
      icon: Icon(Icons.audiotrack, color: Colors.green, size: 30.0),
      label: 'PHOTOS');

  var v3 = BottomNavigationBarItem(
      icon: Icon(
        Icons.beach_access,
        color: Colors.blue,
        size: 36.0,
      ),
      label: 'POSTS');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOption[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        // event on tap -> set _selectedPage
        onTap: (int tap) {
          setState(() {
            _selectedPage = tap;
          });
        },
        elevation: 2,
        items: <BottomNavigationBarItem>[v1, v2, v3],
      ),
    );
  }
}
