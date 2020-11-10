import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:covid19/data.dart';
import 'package:covid19/drawer.dart';
import 'package:covid19/urllauncher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
                child: Align(
                    alignment: Alignment(-0.25, 1.0),
                    child: Text(
                      "Corona Virus- India",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    )
                )
            )
        ),
        drawer: MyDrawer(),
        body: Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/doctor.gif')
              )
          ),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(15.0),
                child: Container(
                  margin: EdgeInsets.fromLTRB(8.0,180.0,10.0,10.0 ),
                  padding: EdgeInsets.all(10.0),
                  child: Data(),
                ),
            ),
          ),


        floatingActionButton: LaunchURL("https://github.com/AryanSethi")
    );
  }
}




