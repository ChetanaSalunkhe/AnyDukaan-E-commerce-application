import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customdesigns/myCustomAppBar.dart';
import 'customdesigns/myCustomAppBar2.dart';
import 'myMainPage.dart';

class MySplashScreenState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          height: MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          decoration: CustomStyle.getGradientBackground(),
          child:InkWell(
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Splash',)));
            },
            child: CustomStyle.getLogoImages('assets/adlogo.png', 200, 150),
          )
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}