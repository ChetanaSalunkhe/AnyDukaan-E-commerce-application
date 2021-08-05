import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/languageList.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["English","Hindi","Marathi","Kannada"];

class SelectLanguageScreen extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          decoration: CustomStyle.getGradientBackground(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //image
              Container(
                margin: EdgeInsets.only(left: 70,right: 70,top: 73),
                child: CustomStyle.getWalkThroughImages('assets/sellang.png', 220),
              ),
              SizedBox(height: 10,),

              //text
              Row(
                mainAxisAlignment: MainAxisAlignment.start,   //horizontal alignment=left aligned
                crossAxisAlignment: CrossAxisAlignment.start,   //vertical alignment=top aligned
                children: [
                  Padding(padding: EdgeInsets.only(left: 16,right: 16),
                    child: Text(CustomString.selectLanguage,style:CustomStyle.blackBoldMerch_16,),)
                ],
              ),

              Container(
                margin: EdgeInsets.only(left: 16,right: 16),
                child:OptionsList_(entries: entries),
              )
            ],
          ),
        ),
      ),
    );
  }

}