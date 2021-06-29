import 'package:flutter/material.dart';
import 'package:x5/screens/second_screen.dart';

class myHome extends StatefulWidget {
  const myHome({Key? key, required this.tt}) : super(key: key);
  final String tt;

  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter nav'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.tt),
            //access myHome public class's objects variables by widget
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

          Navigator.of(context).pushNamed('/second');

          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (_){
          //       return Second_screen();
          //     }
          // ));
        },
      ),
    );
  }
}

