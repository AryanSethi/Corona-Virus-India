import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

var total=0,recovered=0,active=0,deaths=0,casesaddedtoday=0,deathsaddedtoday=0;
var _total='waiting...',_recovered='waiting...',_active='0',_deaths='0',_casesaddedtoday='0',_deathsaddedtoday='0';

class Data extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return _Data();
  }
}

class _Data extends State<Data>{
  String url="https://api.covid19india.org/data.json";

  @override
  void initState(){
    super.initState();
      this.getJsonData();
  }

  Future<String> getJsonData() async{
    var response =await http.get(
        Uri.encodeFull(url),
        headers: {"Accept":"application/json"}
    );

    setState(() {
      var convertDataToJson= json.decode(response.body);
      _total= convertDataToJson["statewise"][0]["confirmed"];
      total=int.parse(_total);
      _recovered= convertDataToJson["statewise"][0]["recovered"];
      recovered=int.parse(_recovered);
      _deaths= convertDataToJson["statewise"][0]["deaths"];
      deaths=int.parse(_deaths);
      _active= convertDataToJson["statewise"][0]["active"];
      active=int.parse(_active);
      casesaddedtoday=int.parse(_casesaddedtoday);
      _casesaddedtoday= convertDataToJson["statewise"][0]["deltaconfirmed"];
      _deathsaddedtoday= convertDataToJson["statewise"][0]["deltadeaths"];
      deathsaddedtoday=int.parse(_deathsaddedtoday);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
            _total.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 45.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white
             )
         ),
        Text(
            "Total Cases\n\n\n",
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 25,

            )
        ),
        Text(
            _recovered.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white
            )
        ),
        Text(
            "Cured",
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            )
        ),
      ],
    );
  }
}




