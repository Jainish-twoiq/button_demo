import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : MyApp(),
));

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Raisedbutton
  String value = 'Hello World!';
  void onPressed() {
    setState((){
      value = 'My Name is Jainsh ';
    });
  }
  //raisedbutton with parameters
String _v = 'Hello World ';
  void onClick(String v) {
    setState((){
      _v = v;
    });
  }
  //flatbutton
  String _a= 'Hello World ';
  void onTap(){
    setState((){
      _a = DateTime.now().toString();
    });
  }
  //iconbutton
  int _b = 0;
  void add() {
    setState(() {
      _b++;
    });
  }

    void subtract() {
      setState(() {
        _b--;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Button Demo Page'
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                value
              ),
              ElevatedButton(onPressed: onPressed , child :Text('click me '),),
              Text(
                _v
              ),
              ElevatedButton(onPressed: () => onClick('Hello Jainish'), child: Text('click me'),),
              Text(
                _a
              ),
              FlatButton(onPressed: onTap,child : Text('click me'),),
              Text(
                'value = ${_b}'
              ),
              IconButton(onPressed: add, icon: Icon(Icons.add)),
              IconButton(onPressed: subtract, icon: Icon(Icons.remove)),
            ],
          ),
        ),
      ),
    );
  }
}
