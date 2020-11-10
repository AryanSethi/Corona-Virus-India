import 'package:covid19/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Guidelines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Guidelines"),
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal:60.0 ,vertical: 0.0),
            width: screenSize.width/5,
            height: screenSize.height/4.5,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.green,
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                child: Text("WASH YOUR\nHANDS FREQUENTLY",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal:20.0 ,vertical: 5.0),
            width: screenSize.width,
            height: screenSize.height/3.5,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.blueAccent,
              child: Container(
                alignment: Alignment.center,
                child: Text("SOCIAL DISTANCING\nIS THE KEY",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal:30.0 ,vertical: 5.0),
            width: screenSize.width/5,
            height: screenSize.height/5.5,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.teal,
              child: Container(
                alignment: Alignment.center,
                child: Text("DON'T PANIC",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal:55.0 ,vertical: 5.0),
            width: screenSize.width/5,
            height: screenSize.height/4,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.orangeAccent,
              child: Container(
                alignment: Alignment.center,
                child: Text("NO NEED TO\nHOARD GROCERIES",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal:20.0 ,vertical: 5.0),
            width: screenSize.width,
            height: screenSize.height/3.5,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.pinkAccent,
              child: Container(
                alignment: Alignment.center,
                child: Text("STRICTLY FOLLOW\nTHE LOCKDOWN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal:30.0 ,vertical: 5.0),
            width: screenSize.width/5,
            height: screenSize.height/4,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.lime
              ,
              child: Container(
                alignment: Alignment.center,
                child: Text("DONT SPREAD\nFAKE NEWS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal:30.0 ,vertical: 5.0),
            width: screenSize.width,
            height: screenSize.height/4,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Colors.brown,
              child: Container(
                alignment: Alignment.center,
                child: Text("MOSQUITOS DO NOT\nSPREAD CORONA VIRUS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}

