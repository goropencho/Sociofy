import 'package:flutter/material.dart';
import 'package:sociofy/home.dart';
import 'package:sociofy/chat_window.dart';
import 'package:sociofy/settings.dart';
import 'package:sociofy/theme.dart';

class NewsFeedPage extends StatefulWidget {
  const NewsFeedPage({Key? key}) : super(key: key);

  @override
  _NewsFeedPageState createState() => _NewsFeedPageState();
}

class _NewsFeedPageState extends State<NewsFeedPage> {
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static const List<String> _currentTab = [
    "Welcome Home, User!",
    "Messages",
    "Settings"
  ];

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Messages(),
    Settings(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          selectedItemColor: Theme.of(context).bottomAppBarColor,
          unselectedItemColor: Theme.of(context).unselectedWidgetColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.only(left: 150, top: 60),
                child: Text(
                  "Gaurav Panchal \n @goropencho",
                  style: TextStyle(fontSize: 18.0),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      scale: 4,
                      image: AssetImage("assets/profile_header.png")),
                )),
            ListTile(
              title: Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Messages"),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(_currentTab[_currentIndex]),
      ),
      body: _widgetOptions.elementAt(_currentIndex),
    );
  }
}
