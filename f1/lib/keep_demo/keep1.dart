import 'package:flutter/material.dart';
class KeepAliveBarController extends StatefulWidget {
  final Widget child;
  KeepAliveBarController({Key key, this.child}) : super(key: key);
  _KeepAliveBarControllerState createState() => _KeepAliveBarControllerState();
}

class _KeepAliveBarControllerState extends State<KeepAliveBarController>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  //重写被释放的方法 只释放TabController
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("keep Alive Demo"),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.directions_run),
            ),
            Tab(
              icon: Icon(Icons.directions_subway),
            ),
            Tab(
              icon: Icon(Icons.directions_car),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          MyHomePage(),
          MyHomePage(),
          Text("33333"),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Widget child;

  MyHomePage({Key key, this.child}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  @override
  bool get wantKeepAlive => true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("tab add one "),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "btn",
        child: Icon(Icons.add),
      ),
    );
  }
}
