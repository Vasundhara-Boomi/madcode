import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Check Prime Number',
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
useMaterial3: true,
),
home: Scaffold(
appBar: AppBar(
title: Text("Check if a number is prime or not"),
),
body: CheckPrime(),
),
);
}
}
class CheckPrime extends StatefulWidget {
State<CheckPrime> createState() => _CheckPrimeState();
}
class _CheckPrimeState extends State<CheckPrime> {
TextEditingController _numberController = TextEditingController();
String _result = '';
void _incrementCounter() {
}
@override
Widget build(BuildContext context) {
return Padding(
padding: const EdgeInsets.all(16),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
TextField(
controller: _numberController,
keyboardType: TextInputType.number,
decoration: InputDecoration(labelText: "Enter a number"),
),
SizedBox(height: 16,),
ElevatedButton(onPressed: (){
int number = int.tryParse(_numberController.text) ?? 0;
String prime_or_not = check_if_prime(number);
setState(() {
_result = '$number is $prime_or_not';
});
},
child: Text("Check if the number is prime or not")),
SizedBox(height: 16,),
Text(_result)
],
),
);
}
}
String check_if_prime(int number) {
if (number == 1) {
return ("neither a prime nor composite number");
}
bool flag = true;
for (int i = 2; i < number; i++) {
if (number % i == 0) {
flag = false;
break;
}
}
if (flag) {
return ("a prime number!");
}
else {
return ("not a prime number!");
}
}
