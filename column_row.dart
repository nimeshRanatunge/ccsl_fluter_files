import 'package:flutter/material.dart';
main() => runApp(myApp());
class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter x3',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: myNewHome(),
    );
  }
}
class myNewHome extends StatefulWidget {

  @override
  _myNewHomeState createState() => _myNewHomeState();
}

class _myNewHomeState extends State<myNewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter tutorial 9'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        // color: Colors.brown,
        // // margin: EdgeInsets.symmetric(horizontal: 40.0),
        // width: 300.0,
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: <Widget>[
        //       Text('text 1',style: TextStyle(fontSize: 20.0),),
        //       Text('text 1',style: TextStyle(fontSize: 20.0),),
        //       Text('text 1',style: TextStyle(fontSize: 20.0),),
        //     ],
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('text 1',style: TextStyle(fontSize: 20.0),),
                  Text('text 2',style: TextStyle(fontSize: 20.0),),
                  Text('text 3',style: TextStyle(fontSize: 20.0),),
                ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('text 4',style: TextStyle(fontSize: 20.0),),
                Text('text 5',style: TextStyle(fontSize: 20.0),),
                Text('text 6',style: TextStyle(fontSize: 20.0),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('text 7',style: TextStyle(fontSize: 20.0),),
                Text('text 8',style: TextStyle(fontSize: 20.0),),
                Text('text 9',style: TextStyle(fontSize: 20.0),),
              ],
            ),
          ],
        ),

      ),
    );
  }
}


