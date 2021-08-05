import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/cardTemplateSetup.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class SupportCallPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 500,
        color: Colors.transparent,
        child: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //row for text and cross button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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

              CustomStyle.getLogoImages('assets/supportcall.png', 250, 200),
              SizedBox(height: 22,),

             Padding(
                 padding: EdgeInsets.only(left: 20,right: 20),
                 child:Text(CustomString.supportMsg,style: CustomStyle.blackNormalCust_14,textAlign: TextAlign.center,softWrap: true,maxLines: 2,),),

              SizedBox(height: 17,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: BtnContinue(CustomString.callNow, context,'SupportPopup'),
              ),
              SizedBox(height: 20,),

              TextButton(
                onPressed: (){
                  //logic here
                  Navigator.pop(context);
                },
                child: Text(CustomString.cancel,style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.center,),),
              SizedBox(height: 20,),

            ],
          ),
        ));
  }

}