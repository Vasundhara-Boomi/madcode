import 'package:flutter/material.dart'; 

void main() { 
runApp(MyApp()); 
} 

class MyApp extends StatelessWidget { 
@override 
Widget build(BuildContext context) { 
	return MaterialApp( 
	debugShowCheckedModeBanner: false, 
	theme: ThemeData( 
		primarySwatch: Colors.green, // Set the app's primary theme color 
	), 
	title: 'Swipe GestureDetector Example', 
	home: SwipeGestureExample(), 
	); 
} 
} 

class SwipeGestureExample extends StatefulWidget { 
@override 
_SwipeGestureExampleState createState() => _SwipeGestureExampleState(); 
} 

class _SwipeGestureExampleState extends State<SwipeGestureExample> { 
Color _backgroundColor = Colors.blue; // Initial background color 

void _changeColorOnSwipe(DragUpdateDetails details) { 
	if (details.delta.dx > 0) { 
	// Swipe right 
	setState(() { 
		_backgroundColor = Colors.green; 
	}); 
	} else if (details.delta.dx < 0) { 
	// Swipe left 
	setState(() { 
		_backgroundColor = Colors.red; 
	}); 
	} 
} 

@override 
Widget build(BuildContext context) { 
	return Scaffold( 
	appBar: AppBar( 
		title: Text('Swipe GestureDetector Example'), 
	), 
	body: Center( 
		child: GestureDetector( 
		onHorizontalDragUpdate: 
			_changeColorOnSwipe, // Call the function on horizontal drag 
		child: Container( 
			width: 200, 
			height: 200, 
			color: _backgroundColor, // Use the current background color 
			child: Center( 
			child: Text( 
				'Swipe me!', 
				style: TextStyle( 
				fontSize: 24, 
				color: Colors.white, 
				), 
			), 
			), 
		), 
		), 
	), 
	); 
} 
} 
