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
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(child: Text("Flutter tutorial 12")),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            leading: Icon(Icons.brightness_auto),
            title: Text('Brightness Auto'),
            subtitle: Text('Çhange the brightness'),
            trailing: Icon(Icons.menu),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.brightness_auto),
            title: Text('Brightness Auto'),
            subtitle: Text('Çhange the brightness'),
            trailing: Icon(Icons.menu),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.brightness_auto),
            title: Text('Brightness Auto'),
            subtitle: Text('Çhange the brightness'),
            trailing: Icon(Icons.menu),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.brightness_auto),
            title: Text('Brightness Auto'),
            subtitle: Text('Çhange the brightness'),
            trailing: Icon(Icons.menu),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.brightness_auto),
            title: Text('Brightness Auto'),
            subtitle: Text('Çhange the brightness'),
            trailing: Icon(Icons.menu),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.brightness_auto),
            title: Text('Backups'),
          ),
          Divider(),
        ],
      ),
    );
  }
}

// Text(
// 'List view t12',
// style: Theme.of(context).textTheme.headline4,
// ),
// Container(
// height: 200.0,
// color: Colors.green,
// ),
// Container(
// height: 200.0,
// color: Colors.amber,
// ),
// Container(
// height: 300.0,
// color: Colors.red,
// ),



