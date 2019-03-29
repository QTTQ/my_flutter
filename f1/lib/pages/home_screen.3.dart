import 'package:flutter/material.dart';

class HomeScreen3 extends StatelessWidget {
  final Widget child;

  HomeScreen3({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home3"),),
      body: Center(child: Text("homeaaaa3"),),
    );
  }
}