import 'package:flutter/material.dart';
import 'pages/home_screen.1.dart';
import 'pages/home_screen.2.dart';
import 'pages/home_screen.3.dart';
import 'pages/home_screen.4.dart';
import 'pages/home_screen.5.dart';

class BottomNavigationWidget extends StatefulWidget {
  final Widget child;

  BottomNavigationWidget({Key key, this.child}) : super(key: key);

  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> listPage = List();
  @override
  void initState() {
    listPage
      ..add(HomeScreen1())
      ..add(HomeScreen2())
      ..add(HomeScreen3())
      ..add(HomeScreen4())
      ..add(HomeScreen5());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPage[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottomNavigationColor,
            ),
            title: Text(
              "homepage",
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _bottomNavigationColor,
            ),
            title: Text(
              "homepage1",
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _bottomNavigationColor,
            ),
            title: Text(
              "homepage2",
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _bottomNavigationColor,
            ),
            title: Text(
              "homepage3",
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps,
              color: _bottomNavigationColor,
            ),
            title: Text(
              "homepage4",
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
           _currentIndex=index; 
          });
        },
      ),
    );
  }
}
