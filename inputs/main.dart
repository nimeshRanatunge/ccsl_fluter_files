import 'package:flutter/material.dart';
main()=>runApp(myApp());
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial 13',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: myHomePage(),
    );
  }
}
class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  _myHomePageState createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  TextEditingController title = TextEditingController();
  TextEditingController title2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    title.text = 'CCSL'; //text is a property
    title2.text = '223';
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          keyboardType: TextInputType.text,
          controller: title,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: (){
                title.text = '';
              },
            ),
            border: InputBorder.none,
            filled: true,
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.white70),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 8,
                onChanged: (text){
                  print(text);
                },
                //obscureText: true,
                keyboardType: TextInputType.number,
                style: TextStyle(letterSpacing: 2.0),
                //enabled: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 8,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                ),
                cursorColor: Colors.black,
                //obscureText: true,
                keyboardType: TextInputType.number,
                autofocus: true,
                style: TextStyle(letterSpacing: 2.0),
                onSubmitted: (text){
                  print(text);
                },
                controller: title2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

