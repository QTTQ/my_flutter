// import 'package:flutter/material.dart';
// import 'bottom_navigation_widget.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//      return MaterialApp(
//        title:"底部导航",
//        theme: ThemeData.dark(),
//        home:BottomNavigationWidget()
//      );
//   }
// }



// //底部导航栏
// import 'package:flutter/material.dart';
// import 'bottom_navigation_widget.dart';
// void main()=>runApp(MyApp());
// class MyApp extends StatelessWidget {
//   final Widget child;

//   MyApp({Key key, this.child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "aaa",
//       theme: ThemeData.dark(),
//       home: BottomNavigationWidget(),
//     );
//   }
// }


// //不规则底部导航栏 加 动态页面

// import 'package:flutter/material.dart';
// import 'bottom_appBar_demo.dart';
// void main()=>runApp(new MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title:'Flutter Demo',
// theme: ThemeData(
//   primarySwatch: Colors.lightBlue,
// ),
//       home:BottomAppBarDemo(),
//     );
//   }
// }

// //酷炫的路由动画-1
// import 'package:flutter/material.dart';
// import 'pages_router.dart';
// void main()=>runApp(MyApp());

// class MyApp extends StatelessWidget {
//   final Widget child;

//   MyApp({Key key, this.child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter Demo 路由动画",
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:FirstPage()
//     );
//   }
// }

//保持页面状态
import 'package:flutter/material.dart';
import 'keep_alive_demo.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo 路由动画",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:KeepAliveDemo()
    );
  }
}