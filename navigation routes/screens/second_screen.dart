import 'package:flutter/material.dart';
import 'package:x5/screens/home_page.dart';

class Second_screen extends StatelessWidget {
  String text1 = 'a';
  Second_screen(String text){
    this.text1 = text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello 2nd screen'),
        leading: IconButton(
          icon: Icon(Icons.settings_backup_restore_sharp),
          onPressed: (){
            Navigator.pop(context, myHome);
          },
        ),
      ),
      body: Center(
        child: Container(
          child: Text(text1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.icecream),
        onPressed: (){

          Navigator.of(context).pushNamed('/third');

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
