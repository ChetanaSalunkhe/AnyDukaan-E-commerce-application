import 'package:anydukaan/customdesigns/warninTemplate.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class RequestSentPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 500.0,
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
                        Text(CustomString.reqSent,style: CustomStyle.boldValueText,
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
                                Navigator.of(context).pop({"reqStatus":"Table Requested"});
                              },
                            ),)
                        ],
                      )),
                ],
              ),
              SizedBox(height: 20,),

              CustomStyle.getLogoImages('assets/tablrequest.png', 159.82, 171),

              SizedBox(height: 16,),
              Padding(
                  padding: EdgeInsets.only(left: 28,right: 28,bottom: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Cafe Cool Poona',style: CustomStyle.blueBoldText16,textAlign: TextAlign.justify,),
                      SizedBox(height: 10,),
                      Text('Table for 2 Guests at 8:30 PM',style: CustomStyle.subTitle,textAlign: TextAlign.justify,),
                      SizedBox(height: 28,),
                      Text(CustomString.dmsg_we_notify,style: CustomStyle.blackBoldlCust_12,textAlign: TextAlign.justify,),
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