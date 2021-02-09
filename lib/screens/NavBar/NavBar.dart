import 'package:flutter/material.dart';
import '../homepage/homepage.dart';
import '../Addfood/addfood.dart';
import '../Profile/profile.dart';
import '../Recipes/Recipe.dart';
import '../About/About.dart';
import '../../style.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key, this.username}) : super(key: key);
  String username;
  @override
  _NavBarState createState() => new _NavBarState(username);
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 2;
  var currentUsername;
  _NavBarState(String username) {
    currentUsername = username;
  }
  final List<Widget> _children = [
    Profile(),
    Addfood(),
    HomePage(),
    Recipes(),
    About(),
  ];

  // final usernameholder;
  // final passwordHolder;
  // HomePage({Key key, @required this.usernameholder}) : super(key: key);
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: new Container(),
        toolbarHeight: 60,
        title: Text(
          'Hi ${currentUsername}',
          style: AppBarTextStyle,
        ),
        backgroundColor: Colors.cyan[300],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedFontSize: 15,
        currentIndex: _currentIndex,
        backgroundColor: Colors.cyan[800],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.white),
            label: "Profile",
            backgroundColor: Colors.cyan[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood, color: Colors.white),
            label: "Add Food",
            backgroundColor: Colors.cyan[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: "Home",
            backgroundColor: Colors.cyan[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_outlined, color: Colors.white),
            label: "Recipes",
            backgroundColor: Colors.cyan[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: Colors.white),
            label: "About",
            backgroundColor: Colors.cyan[800],
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
