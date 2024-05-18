import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  bool _lightIsOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.lightbulb_outline,
                color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
                size: 60,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _lightIsOn = !_lightIsOn;
                  final snackBar = SnackBar(content: Text('Tap Function'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                });
              },
              onDoubleTap: (){
                setState(() {
                  _lightIsOn = !_lightIsOn;
                  final snackBar = SnackBar(content: Text('Double Tap Function'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                });
              },
              onLongPress: (){
                setState(() {
                  _lightIsOn = !_lightIsOn;
                  final snackBar = SnackBar(content: Text('Long Press Function'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                });
              },
              child: Container(
                color: Colors.yellow.shade600,
                padding: const EdgeInsets.all(8),
                child: Text(_lightIsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}