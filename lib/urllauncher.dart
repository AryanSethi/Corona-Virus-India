import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

String urlx;

class LaunchURL extends StatefulWidget{
  String _launchUrl;
  LaunchURL(this._launchUrl){
    urlx=_launchUrl;
  }
  final String title='Launch URL';
  @override
  _LaunchURL createState()=>_LaunchURL();
}

class _LaunchURL extends State<LaunchURL>{
  Future<void> _launched;

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

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Image.asset('assets/git.JPG'),
      backgroundColor: Colors.black,
      onPressed: (){
        _launchInBrowser(urlx);
      },
    );
  }
}