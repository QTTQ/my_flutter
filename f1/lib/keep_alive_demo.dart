import 'package:flutter/material.dart';
import 'keep_demo/keep1.dart';
import 'keep_demo/keep2.dart';

class KeepAliveDemo extends StatefulWidget {
  final Widget child;
  KeepAliveDemo({Key key, this.child}) : super(key: key);

  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

class _KeepAliveDemoState extends State<KeepAliveDemo> {
  final _bottomNavigationColor = Colors.pink;
  int _currentIndex = 0;
  List<Widget> listPages = List();
  @override
  void initState() {
    listPages
      ..add(KeepAliveBarController())
      ..add(KeepAliveBarController2())
      ..add(KeepAliveBarController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPages[_currentIndex],
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
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}



