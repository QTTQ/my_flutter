import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  final Widget child;

  HomeScreen2({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home2"),),
      body: Center(child: Text("homeaaaa2"),),
    );
  }
}