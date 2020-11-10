import 'package:covid19/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

class CallService{
  void call(String number)=>launch("tel:$number");
}

GetIt locator= GetIt();

void set(){
  locator.registerSingleton(CallService());
}

class contactclass{
  String state;
  int contact;
  contactclass(this.state, this.contact);
}

var contacts =[
  contactclass("Andhra Pradesh ",08662410978), contactclass("Arunachal Pradesh",9436055743), contactclass("Assam",6913347770),  contactclass("Bihar",104),  contactclass("Chhattisgarh",104), contactclass("Goa",104),
  contactclass("Gujarat",104), contactclass("Haryana",8558893911), contactclass("Himachal Pradesh",104),  contactclass("Jharkhand",104),  contactclass("Karnataka",104), contactclass("Kerala",04712552056),
  contactclass("Madhya Pradesh",07552527177), contactclass("Maharashtra ",02026127394), contactclass("Manipur",3852411668),  contactclass("Meghalaya ",108),  contactclass("Mizoram ",102), contactclass("Nagaland ",7005539653),
  contactclass("Odisha",9439994859), contactclass("Punjab",104), contactclass("Rajasthan ",01412225624),  contactclass("Sikkim ",104),  contactclass("Tamil Nadu ",04429510500), contactclass("Telangana",104),
  contactclass("Tripura",03812315879), contactclass("Uttarakhand ",104), contactclass("Uttar Pradesh ",18001805145),  contactclass("West Bengal",1800313444222), contactclass("Andaman and Nicobar Islands",03192232102), contactclass("Chandigarh ",9779558282),
  contactclass("Dadra and Nagar Haveli and Daman & Diu",104), contactclass("Delhi",01122307145), contactclass("Jammu & Kashmir",01912520982), contactclass("Ladakh ",01982256462), contactclass("Lakshadweep ",104), contactclass("Puducherry",104),
];

class HelplineNumbers extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HelplineNumbers();
  }
}

class _HelplineNumbers extends State<HelplineNumbers> {

  final CallService _service=locator<CallService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("HelplineNumbers"),
      ),
      drawer: MyDrawer(),
      body: Container(
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical:0.0),
                onTap: (){
                  _service.call((contacts[index].contact).toString());
                },
                trailing: Icon(
                    Icons.arrow_right,
                    color: Colors.green,
                ),
                title: Text(contacts[index].state,
                 style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                   color: Colors.deepPurple
                  ),
                ),
                subtitle: Text((contacts[index].contact).toString(),
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16
                 ),
                ),
              )
            );
          }
        ),
      )
    );
  }
}