import 'package:covid19/MoreStatistics.dart';
import 'package:covid19/Guidelines.dart';
import 'package:covid19/HelplineNumbers.dart';
import 'package:flutter/material.dart';
import 'package:covid19/home.dart';
import 'package:covid19/splashscreen.dart';
import 'package:flutter/services.dart' ;

void main(){
  set();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: "Corona Virus",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MySplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomePage': (context) => HomePage(),
        '/MoreStatistics': (context) => MoreStatistics(),
        '/Guidelines': (context) => Guidelines(),
        '/HelplineNumbers': (context) => HelplineNumbers(),
      },
    );
  }
}
