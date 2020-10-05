import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());//here called
}
//STATELESS WIDGET
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Shyam 12'),
    );
  }
}*/

//STATEFULL WITH ON CLICK
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String value='Test';

  void clickMe(){
    setState(() {
      value = "Shyam kumar";
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Text('$value'),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: clickMe,
          )
        ],
      ),
    );
  }
}

