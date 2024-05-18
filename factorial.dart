import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Factorial Checker',
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(
seedColor: const Color.fromARGB(255, 58, 183, 183)),
useMaterial3: true,
),
home: Scaffold(
appBar: AppBar(title: Text("Factorial Checker")),
body: FactorialChecker(),
));
}
}
class FactorialChecker extends StatefulWidget {
@override
_FactorialCheckerState createState() => _FactorialCheckerState();
}
class _FactorialCheckerState extends State<FactorialChecker> {
TextEditingController _numberController = TextEditingController();
String _result = '';
@override
Widget build(BuildContext context) {
return Padding(
padding: const EdgeInsets.all(125),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
TextField(
controller: _numberController,
keyboardType: TextInputType.number,
decoration: InputDecoration(labelText: "Enter a number"),
),
SizedBox(height: 30),
ElevatedButton(
onPressed: () {
int number = int.tryParse(_numberController.text) ?? 0;
int isFactorial = checkFactorial(number);
setState(() {
_result = '$number! = $isFactorial';
});
},
child: Text("Calculate Factorial"),
),
SizedBox(height: 30),
Text(
_result,
style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
),
],
),
);
}
}
int checkFactorial(int number) {
if (number == 0 || number == 1) {
return 1;
} else {
return number * checkFactorial(number - 1);
}
}
