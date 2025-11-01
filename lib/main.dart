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
              child: Text('Your winning Number is :7',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 15,),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: x==7?Colors.lightGreenAccent:Colors.yellowAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: x == 7?Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all,color: Colors.blue,size: 30,),
                    SizedBox(height: 10,),
                    Text('Congratulation You have WIN The Lottery\n Your Number is $x \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                )
                    :Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error,color: Colors.red,size: 30,),
                    SizedBox(height: 10,),
                    Text('Better Luck Next Time Your Number is $x \n try again',
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
         x = random.nextInt(30);
         print(x);
         setState(() {

         });
        },
          child: Icon(Icons.refresh_rounded),
          backgroundColor: Colors.pinkAccent,
        ),
      )
    );
  }
}



