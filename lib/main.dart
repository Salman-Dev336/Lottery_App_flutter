import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // my lucky number
  int x = 7;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App',
            style: TextStyle(
              color: Colors.white,
          ),
        ),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text('Your winning Number is : $x',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.error,color: Colors.red,size: 30,),
                  SizedBox(height: 10,),
                  Text('Better Luck Next Time Your Winning Number is $x'),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
        },
          child: Icon(Icons.refresh_rounded),
          backgroundColor: Colors.pinkAccent,
        ),
      )
    );
  }
}



