import 'package:flutter/material.dart'; 
import 'package:animate_do/animate_do.dart'; 

// animate_do: ^3.0.2
// flutter pub get

void main() { 
runApp(const MyApp()); 
} 

class MyApp extends StatelessWidget { 
const MyApp({Key? key}) : super(key: key); 
@override 
Widget build(BuildContext context) { 
	return MaterialApp( 
	title: 'Animated Widgets', 
	theme: ThemeData( 
		primarySwatch: Colors.orange, 
	), 
	home: MyHomePage(), 
	); 
} 
} 

class MyHomePage extends StatefulWidget { 
@override 
State<MyHomePage> createState() => _MyHomePageState(); 
} 

class _MyHomePageState extends State<MyHomePage> { 
@override 
Widget build(BuildContext context) { 
	return Scaffold( 
	appBar: AppBar( 
		title: const Text("Animated Widget"), 
		centerTitle: true
	), 
	body: Center( 
		child: Column( 
		mainAxisAlignment: MainAxisAlignment.spaceAround, 
		children: [ 
			FadeOutLeft(duration: Duration(seconds: 6), child: NewContainer()), 
			BounceInUp(child: NewContainer(), duration: Duration(seconds: 4)), 
			Swing( 
			child: NewContainer(), 
			infinite: true, 
			), 
			Bounce(child: NewContainer(), infinite: true), 
			 
			Spin(child: NewContainer(), infinite: true), 
			SlideInLeft(duration: Duration(seconds: 4), child: NewContainer()) 
		], 
		), 
	), 
	); 
} 
} 

class NewContainer extends StatelessWidget { 
Widget build(BuildContext context) { 
	return Container(height: 45, width: 65, color: Colors.blue); 
} 
}
