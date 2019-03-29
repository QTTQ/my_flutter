import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  final Widget child;

  HomeScreen1({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home"),),
      body: Center(child: Text("homeaaaa"),),
    );
  }
}