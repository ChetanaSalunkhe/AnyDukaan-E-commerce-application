import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/languageList.dart';
import 'package:anydukaan/customdesigns/warninTemplate.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["English","Hindi","Marathi","Kannada"];

bool isOptionSelected=false;
int selectedIndex=0;
var cardColor = CustomColors.white;
var sideStyle = CustomStyle.blackOutline;
var textStyle = CustomStyle.blackNormalCust_14;
bool isCardEnable=false;

class ChooseLangPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 367.0,
        color: Colors.transparent,
        child: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //row for text and cross button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 6,
                    fit: FlexFit.tight,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(CustomString.changeLanguage,style: CustomStyle.boldValueText,
                          textAlign: TextAlign.center,)
                      ],
                    ),
                  ),

                  Flexible(
                      flex: 4,
                      fit: FlexFit.loose,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: IconButton(
                              alignment: Alignment.centerRight,
                              icon: CustomStyle.getImageIcons('assets/close.png',10,CustomColors.black),
                              iconSize: 50,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),)
                        ],
                      )),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.only(left: 16,right: 16),
                child:OptionsList_(entries: entries),
              )
            ],
          ),
        ));
  }

}