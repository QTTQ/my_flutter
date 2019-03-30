import 'package:flutter/material.dart';

class HomeScreen1 extends StatefulWidget {
  final Widget child;

  HomeScreen1({Key key, this.child}) : super(key: key);

  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  String _homeText = "home";
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState(); //初始化数据
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_homeText),
      ),
      body: Center(
        child: Text(_homeText),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("1111")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("2222")),
        ],
        currentIndex: _currentIndex,
        onTap: _tapFn,
      ),
    );
  }

  void _tapFn(int index) {
    _currentIndex = index;
    if (index == 0) {
      print(index);
      _homeText = "homeCliked1";
    } else {
      print(index);
      _homeText = "homeCliked2";
    }
  }
}
