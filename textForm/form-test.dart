// ignore_for_file: file_names

import 'package:flutter/material.dart';
class FormTest extends StatefulWidget {

  const FormTest({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  _FormTestState createState() => _FormTestState();
}

class _FormTestState extends State<FormTest> {
  String _name = 'x';

  Widget _buildNamefield(){
    return TextFormField(
      decoration: InputDecoration(hintText: 'Name'),
      maxLength: 50,
      maxLines: 2,
      validator: (text){
        if(text!.isEmpty){
          return 'Name cannot be empty';
        }
        else {
          return null;
        }// if returns string it means that's a error, null means theres no errors
      },
      onSaved: (text){
        _name = text!;
      },
    );
  }
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.text)),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, //check state of the form
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                _buildNamefield(),
                SizedBox(
                  height: 100,
                ),
                Container(
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                      child: Text('Save'),
                      onPressed: (){
                        _formKey.currentState!.validate();
                        print('pressed');
                      },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
