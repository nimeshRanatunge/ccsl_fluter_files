import 'package:flutter/material.dart';
main()=>runApp(myApp());
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'list views',
      home: myHomeApp(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
class myHomeApp extends StatefulWidget {
  const myHomeApp({Key? key}) : super(key: key);

  @override
  _myHomeAppState createState() => _myHomeAppState();
}

class _myHomeAppState extends State<myHomeApp> {
  var items = List<String>.generate(100, (index) => 'Item $index'); // array data source
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text("Flutter tutorial 12")),
      ),
      body: ListView.builder(
          itemCount: items.length, //increments 99 times
          itemBuilder: (context, index){
              return ListTile(
                title: Text(items[index]),
              );
            },
          ),
    );
  }
}
