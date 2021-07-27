import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/warninTemplate.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class OrderCancelPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 520.0,
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
                        Text(CustomString.ordercancel,style: CustomStyle.boldValueText,
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
              SizedBox(height: 34,),

              CustomStyle.getLogoImages('assets/ordcancel_sorry.png', 202.46, 190.34),

              Container(
                height: 62,
                margin: EdgeInsets.only(left: 16,right: 16,top: 12),
                child: GetWarningTemplate(CustomString.dmsg_warning,2),
              ),

              SizedBox(height: 16,),
              Padding(
                padding: EdgeInsets.only(left: 28,right: 28,bottom: 21),
                child: Text(CustomString.dmsg_warning2,style: CustomStyle.blackNormalCust_14,softWrap: true,overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,maxLines: 2,),
              ),

              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child:BtnContinue('Check Shops', context,'OrdCancelPopup'),
              ),
              SizedBox(height: 30,),

            ],
          ),
        ));
  }

}