import 'package:flutter/material.dart';
import 'package:covid19/home.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:connectivity/connectivity.dart';
import 'dart:async';
import 'package:data_connection_checker/data_connection_checker.dart';


class MySplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<MySplashScreen>{

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      backgroundColor: Colors.black,
      image: Image.asset('assets/corona.PNG',),
      photoSize: 150.0,
      loaderColor: Colors.green,
      navigateAfterSeconds: HomePage(),
    );
  }
}

