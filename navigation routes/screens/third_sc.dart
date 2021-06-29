import 'package:flutter/material.dart';
import 'package:x5/screens/home_page.dart';
import 'package:x5/screens/second_screen.dart';

class Third_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello 3nd screen'),
        leading: IconButton(
          icon: Icon(Icons.settings_backup_restore_sharp),
          onPressed: (){
            Navigator.pop(context, Second_screen);
          },
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Hey 3rd page"),
        ),
        ),
      );
  }
}
