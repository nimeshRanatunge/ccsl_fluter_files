import 'package:flutter/material.dart';

import 'form-test.dart';
main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'form - tutorial 14',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: FormTest(text: 'Form - tutorial 14'),
    );
  }
}


