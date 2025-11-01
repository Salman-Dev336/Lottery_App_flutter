import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
            child: Column(
              children: [
              ],
            )
        ),
        floatingActionButton: FloatingActionButton(onPressed:
            () {
          print('salman');
        },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}

