import 'package:flutter/material.dart';
main() => runApp(myapp());
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.orange
      ),
      home: Myhomepage(),
    );
  }
}
class Myhomepage extends StatefulWidget {

  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter tytorial 8'),
      ),
      body: Center(
        child: Container( //container one child only
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          transform: Matrix4.rotationZ(0.3),
          height: 200.0,
          alignment: Alignment.bottomRight,
          width: double.infinity,
          color: Colors.lightBlue,
          child: Text("my text", textScaleFactor: 2.0,),
        ),
      ),
    );
  }
}



