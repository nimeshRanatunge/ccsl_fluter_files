import 'package:flutter/material.dart';
main() => runApp(myfirstapp());
class myfirstapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: my_home_page(),
    );
  }
}
class my_home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,

      child: Scaffold(
        appBar: AppBar(
          title: Text('flutter'),
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: (){},
          // ),
          actions: <Widget>[
            IconButton(
            icon: Icon(Icons.home),
            onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.food_bank_outlined),
              onPressed: (){},
            ),
          ],
          flexibleSpace: Image.asset("assets/nvidia-red-logo-4k-red-grunge-background-nvidia-brands.jpg", fit: BoxFit.cover,),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_bike), text: 'tab1',),
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_train)),
            ],
          ),
            elevation: 4.0,


          //PreferredSize(
          //   child: Container(),
          //   preferredSize: Size.fromHeight(70.0),
          // ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("1st page", textScaleFactor: 2.0,)),
            tab2(),
            Center(child: Text("3rd page")),
          ],
        ),
        drawer: Drawer(
          child: Center(child: Text("xyz")),
        ),
      ),
    );
  }
}

Widget tab2(){
  return Center(
      child: Column(
        children: [
          Text("hey brothers", textScaleFactor: 2.0, style: TextStyle(color: Colors.lightBlue),),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: (){},
          ),
        ],
      ),
  );
}
