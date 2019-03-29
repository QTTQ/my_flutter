import 'package:flutter/material.dart';

class HomeScreen4 extends StatelessWidget {
  final Widget child;

  HomeScreen4({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home4"),),
      body: Center(child: Text("homeaaaa4"),),
    );
  }
}