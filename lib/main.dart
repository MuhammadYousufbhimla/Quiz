import 'dart:async' show Timer;


import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quiz/view/first.dart';


void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      debugShowCheckedModeBanner: false,
      home: new Scaffold(

        body: Center(
            child: AnimatedSplashScreen(
                duration: 2500,
                backgroundColor: Color.fromARGB(255, 38, 129, 203),
                splashTransition: SplashTransition.rotationTransition,
                splashIconSize: 300,
                splash: Container(
       
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/splash.png',
                    ),
                  )
                  
                  ),
                  // child:   Text(
                  //     "Welcome to next page \n Best of Luck",
               
                    
                  // )
                  ),
                
                nextScreen: First()
                // nextScreen: Home(),
                )),
      ),
    );
  }
}
