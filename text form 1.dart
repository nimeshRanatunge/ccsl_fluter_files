import 'package:flutter/material.dart';
main()=>runApp(myapp());
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'rows',
      home: myhomie(),
    );
  }
}
class myhomie extends StatelessWidget {
  const myhomie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rows'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Row(
        children: [
          Text('hello world'),
          FlatButton(
            onPressed: (){},
            color: Colors.amber,
            child: Text('mybutton'),
          ),
        ],
      ),
    );
  }
}
