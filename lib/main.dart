import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
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
            SizedBox(height: 15,),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error,color: Colors.red,size: 30,),
                    SizedBox(height: 10,),
                    Text('Better Luck Next Time Your Winning Number is $x\n try again',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          print(random.nextInt(10).toString());
        },
          child: Icon(Icons.refresh_rounded),
          backgroundColor: Colors.pinkAccent,
        ),
      )
    );
  }
}



