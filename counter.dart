
import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Demo',
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
useMaterial3: true,
),
home: Scaffold(
body: BaseCounter(),
),
);
}
}
class BaseCounter extends StatefulWidget {
State<BaseCounter> createState() => _BaseCounterState();
}
class _BaseCounterState extends State<BaseCounter> {
int _counter = 0;
int _base = 10;
void _incrementCounter() {
setState(() {
_counter++;
});
}
String _getCounterValue() {
switch (_base) {
case 8:
return _counter.toRadixString(8).toUpperCase();
case 16:
return _counter.toRadixString(16).toUpperCase();
default:
return '$_counter';
}
}
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
backgroundColor: Theme.of(context).colorScheme.inversePrimary,
title: Text('Number System Counter'),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Text(
'Counter Value ($_base): ${_getCounterValue()}',
style: Theme.of(context).textTheme.headlineMedium,
),
SizedBox(height: 16,),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
ElevatedButton(
onPressed: () {
setState(() {
_base = 8;
});
},
child: Text('Octal'),
),
SizedBox(width: 16,),
ElevatedButton(
onPressed: () {
setState(() {
_base = 10;
});
},
child: Text('Decimal'),
),
SizedBox(width: 16,),
ElevatedButton(
onPressed: () {
setState(() {
_base = 16;
});
},
child: Text('Hexadecimal'),
),
],
),
],
),
),
floatingActionButton: FloatingActionButton(
onPressed: _incrementCounter,
tooltip: 'Increment',
child: const Icon(Icons.add),
), // This trailing comma makes auto-formatting nicer for build methods.
);
}
}