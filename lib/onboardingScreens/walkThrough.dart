import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/customPageIndicator.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class WalkThroughScreen extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //height: MediaQuery.of(context).size.height,
          height: 640,
          decoration: CustomStyle.getGradientBackground(),  //gradient background to page

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //logo
              ClipRRect(
                child: Container(
                  margin: EdgeInsets.only(left: 140,right: 140,top: 30),
                  child: CustomStyle.getLogoImages('assets/adlogo.png', 80,55),
                ),
              ),
              SizedBox(height: 64,),
              AdvPages(),
              SizedBox(height: 73,),
              TextButton(
                  onPressed: (){

              }, child: Text('Skip',style: CustomStyle.primaryBtnTextOrange,))

              //image
              //title
              //subtitle

              //textbutton


              //image

            ],
          ),
        ),
      ),
    );
  }

}