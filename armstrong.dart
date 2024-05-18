import 'dart:math';
import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: Text('Armstrong Number Checker'),
),
body: ArmstrongNumberChecker(),
),
);
}
}
class ArmstrongNumberChecker extends StatefulWidget {
@override
_ArmstrongNumberCheckerState createState() => _ArmstrongNumberCheckerState();
}
class _ArmstrongNumberCheckerState extends State<ArmstrongNumberChecker> {
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
decoration: InputDecoration(labelText: 'Enter a number'),
),
SizedBox(height: 30),
ElevatedButton(
onPressed: () {
int number = int.tryParse(_numberController.text) ?? 0;
bool isArmstrong = checkArmstrong(number);
setState(() {
_result = isArmstrong
? '$number is an Armstrong number!'
: '$number is not an Armstrong number.';
});
},
child: Text('Check Armstrong Number'),
),
SizedBox(height: 16),
Text(
_result,
style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
),
],
),
);
}
bool checkArmstrong(int number) {
int originalNumber = number;
int numOfDigits = number.toString().length;
int sum = 0;
while (number > 0) {
int digit = number % 10;
sum += pow(digit, numOfDigits).toInt();
number ~/= 10;
}
return sum == originalNumber;
}
}
