import 'package:covid19/urllauncher.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

bool isPresse1=true;
bool isPresse2=false;
bool isPresse3=false;
bool isPresse4=false;

Future<void> _launchInBrowser(String url) async{
  if(await canLaunch(url)){
    await launch(url,
      forceWebView: false,
      forceSafariVC: false,
      headers: <String, String>{'header_key':'header_value'},
    );
  }
  else{
    throw 'Could not launch $url';
  }
}

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage('assets/earth.gif'),
                      fit: BoxFit.fitWidth
                    )
                ),
              ),
              Card(
                elevation: 10.0,
                child: ListTile(
                  leading: IconButton(
                      icon: Icon(
                        Icons.home,
                        color: Colors.deepOrange,
                      )
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 0.0,
                      vertical: 0.0
                  ),
                  onTap: () {
                    isPresse1 ? Navigator.pop(context) : Navigator.pushNamed(context, '/HomePage');
                    isPresse1=true;
                    isPresse2=false;
                    isPresse3=false;
                    isPresse4=false;
                  },
                  title: Text(
                    "Home",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                color: isPresse1 ? Colors.green : Colors.white
              ),
              Card(
                elevation: 5.0,
                child: ListTile(
                  leading: IconButton(
                      icon: Icon(
                          Icons.assessment,
                          color: Colors.blue
                      )
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 0.0,
                      vertical: 0.0
                  ),
                  onTap: () {
                    if(isPresse2){
                      Navigator.pop(context);
                    }
                    else{
                      Navigator.pushNamed(context, '/MoreStatistics');
                    }
                    isPresse1=false;
                    isPresse2=true;
                    isPresse3=false;
                    isPresse4=false;
                  },
                  title: Text(
                    "More Statistics",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                color: isPresse2 ? Colors.green : Colors.white
              ),
              Card(
                elevation: 5.0,
                child: ListTile(
                  leading: IconButton(
                      icon: Icon(
                          Icons.book,
                          color: Colors.red
                      )
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 0.0,
                      vertical: 0.0
                  ),
                  onTap: () {
                    isPresse3 ? Navigator.pop(context) : Navigator.pushNamed(context, '/Guidelines');
                    isPresse1=false;
                    isPresse2=false;
                    isPresse3=true;
                    isPresse4=false;
                  },
                  title: Text(
                    "Guidelines",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                color: isPresse3 ? Colors.green : Colors.white
              ),
              Card(
                elevation: 5.0,
                child: ListTile(
                  leading: IconButton(
                      icon: Icon(
                        Icons.phone,
                        color: Colors.blue,
                      )
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 0.0,
                      vertical: 0.0
                  ),
                  onTap: () {
                    isPresse4 ? Navigator.pop(context) : Navigator.pushNamed(context, '/HelplineNumbers');
                    isPresse1=false;
                    isPresse2=false;
                    isPresse3=false;
                    isPresse4=true;
                  },
                  title: Text(
                    "Helpline numbers",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                color: isPresse4 ? Colors.green : Colors.white
              ),
              Card(
                  elevation: 8.0,
                  child: ListTile(
                    leading: IconButton(
                        icon: Icon(
                          Icons.healing,
                          color: Colors.blue,
                        )
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 0.0,
                        vertical: 0.0
                    ),
                    onTap: () {
                        _launchInBrowser("https://pmnrf.gov.in/en/");
                    },
                    title: Text(
                      "PM Relief fund",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                  color: Colors.white
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 5.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.3,
                ),
              ),
              Card(
                  elevation: 10.0,
                  child: ListTile(
                    title: Text(
                      "About Developer",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                    leading: IconButton(
                        icon: Icon(
                          Icons.contact_mail,
                          color: Colors.orange,
                        )
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 0.0,
                        vertical: 0.0
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context){
                            return Dialog(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                              child: Container(
                                height: 350.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0)
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Stack(
                                      children: <Widget>[
                                        Container(
                                          height: 150.0,
                                        ),
                                        Container(
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10.0),
                                                topRight: Radius.circular(10.0)
                                            ),
                                            color: Colors.teal
                                          ),
                                        ),
                                        Positioned(
                                          top: 50.0,
                                          left: 94.0,
                                          child: Container(
                                            height: 90.0,
                                            width: 90.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(45.0),
                                              border: Border.all(
                                                color: Colors.white,
                                                style: BorderStyle.solid,
                                                width: 2.0
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage('assets/profile.jpg')
                                              )
                                            ),
                                          ),
                                        )
                                      ],
                                    ),

                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        "Aryan Sethi\n\naryan13sethi@gmail.com\n\nThaparUniversity",
                                        style: TextStyle(fontSize: 20.0,color: Colors.blueGrey),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            );
                          }
                      );
                    },
                  ),
                  color: Colors.white
              ),
            ],
          )
      );
  }
}