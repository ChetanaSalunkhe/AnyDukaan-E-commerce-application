import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/warninTemplate.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class TableReservedSuccessPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 477.0,
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
                        Text(CustomString.tableReserved,style: CustomStyle.boldValueText,
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
              SizedBox(height: 20,),

              CustomStyle.getLogoImages('assets/table_reserved.png', 135, 169.28),

              SizedBox(height: 16,),
              Padding(
                  padding: EdgeInsets.only(left: 28,right: 28,bottom: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(CustomString.congrats,style: CustomStyle.blueBoldText16,textAlign: TextAlign.justify,),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Table for 2 Guests at 8:30 PM',style: CustomStyle.subTitle,textAlign: TextAlign.justify,),
                          SizedBox(width: 5,),
                          Text('Hotel Chetana',style: CustomStyle.bottombarTitleText,textAlign: TextAlign.justify,),
                        ],
                      ),
                      SizedBox(height: 18,),
                      Padding(
                        padding: EdgeInsets.only(left: 35,right: 35,bottom: 0),
                        child: Text(CustomString.dmsg_success_preorder+" ₹ 260",style: CustomStyle.blackNormalCust_14,softWrap: true,overflow: TextOverflow.fade,
                          textAlign: TextAlign.center,maxLines: 3,),
                      ),

                    ],
                  )
              ),

              Container(
                height: 62,
                margin: EdgeInsets.only(left: 16,right: 16,bottom: 20),
                child: GetWarningTemplate(CustomString.dmsg_warning_booking,2),
              ),

            ],
          ),
        ));
  }

}