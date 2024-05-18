import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  final List<String> items = List<String>.generate(50, (index) => "Item $index");

  ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              // Handle tap on item
              print('Tapped on: ${items[index]}');
            },
          );
        },
      ),
    );
  }
}
