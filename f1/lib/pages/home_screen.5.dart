import 'package:flutter/material.dart';

class HomeScreen5 extends StatelessWidget {
  final Widget child;

  HomeScreen5({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home5"),),
      body: Center(child: Text("homeaaaa5"),),
    );
  }
}