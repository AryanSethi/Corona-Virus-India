import 'package:charts_flutter/flutter.dart';
import 'package:covid19/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid19/data.dart';


class MoreStatistics extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _MoreStatistics();
  }
}

class _MoreStatistics extends State<MoreStatistics> {
  String  selecteditem ='1';
  var states=['Andhra Pradesh','Arunachal Pradesh','Assam','Bihar','Chandigarh','Chhattisgarh','Goa','Gujarat','Haryana','Himachal Pradesh','Jammu and Kashmir','Jharkhand','Karnataka','Kerala','Ladakh','Madhya Pradesh','Maharashtra','Manipur','Meghalaya','Mizoram','Nagaland','Odisha','Punjab','Rajasthan','Sikkim','Tamil Nadu','Telangana','Tripura','Uttar Pradesh','Uttarakhand'];
  var location="TOTAL",total_cases=total,total_cured=recovered,active_cases=active,total_deaths=deaths,total_cases_added_today=casesaddedtoday,total_deaths_added_today=deathsaddedtoday;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("More Statistics"),
      ),
      drawer: MyDrawer(),
      body: Container(
          padding: EdgeInsets.fromLTRB(5.0,15.0,5.0,5.0),
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20.0,2.0,20.0,.0),
                padding: EdgeInsets.all(10.0),
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "Select State",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2.0,
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold
                        ),
                    ),
                  ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 25.0),
                  alignment: Alignment.topCenter,
                  child: DropdownButton<String>(
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    style: TextStyle(
                      color: Colors.yellow,
                    ),
                    icon: IconButton(
                      iconSize: 20.0,
                      icon: Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      )
                    ),
                    onChanged: (String newvalue){
                      setState((){

                      });
                    },
                    items: states.map((String value){
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blue,
                              fontStyle: FontStyle.italic,
                              fontSize: 20.0
                            ),
                          ),
                      );
                    }).toList(),
                  )
              ),
              Container(
                color: Colors.blueGrey,
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(40.0),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      location,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "\nTotal Cases",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      total_cases.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                      ),
                    ),
                    Text(
                      "Recovered",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                          fontSize: 20,
                      ),
                    ),
                    Text(
                      total_cured.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                      ),
                    ),
                    Text(
                      "Active Cases",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      active_cases.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Deaths",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      total_deaths.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Cases Added today",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      total_cases_added_today.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Deaths Today",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      total_deaths_added_today.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
      )
    );
  }
}





