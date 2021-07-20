import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/warninTemplate.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class OrderNotDeliveredPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 428.0,
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
                    flex: 7,
                    fit: FlexFit.tight,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(CustomString.orderdelivered_not,style: CustomStyle.boldValueText,
                          textAlign: TextAlign.center,)
                      ],
                    ),
                  ),

                  Flexible(
                      flex: 3,
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

              CustomStyle.getLogoImages('assets/oops_error.png', 214.95, 143.82),

              Container(
                margin: EdgeInsets.only(left: 16,right: 16,top: 26),
                child: GetWarningTemplate(CustomString.dmsg_warning_sorry,3),
              ),
             /* Padding(
                padding: EdgeInsets.only(left: 22,right: 22),
                child: Text(CustomString.dmsg_warning_sorry,style: CustomStyle.blackNormalCust_14,softWrap: true,overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,maxLines: 3,),
              ),*/
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 35,right: 35,bottom: 0),
                child: Text(CustomString.dmsg_raise_complaint,style: CustomStyle.blackNormalCust_14,softWrap: true,overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,maxLines: 3,),
              ),

            ],
          ),
        ));
  }

}