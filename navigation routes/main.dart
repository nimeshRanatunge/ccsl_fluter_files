import 'package:flutter/material.dart';
import 'package:x5/screens/home_page.dart';
import 'package:x5/screens/second_screen.dart';
import 'package:x5/screens/third_sc.dart';
main() => runApp(myapp());
class myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'navigation_routes',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: myHome(tt: 'flutter nav'),
      routes: <String, WidgetBuilder>{
        '/second' : (context)=>Second_screen("CCSL"),
        '/third' : (context)=>Third_screen(),
      },
    );
  }
}
