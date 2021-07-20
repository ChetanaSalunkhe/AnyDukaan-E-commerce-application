import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/warninTemplate.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class RequestKhataPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 542.0,
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
                        Text(CustomString.requestKhata,style: CustomStyle.boldValueText,
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

              CustomStyle.getLogoImages('assets/khatacard.png', 192, 161.55),


              SizedBox(height: 16,),
              Padding(
                padding: EdgeInsets.only(left: 28,right: 28,bottom: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Rajesh Kirana Store',style: CustomStyle.blueBoldText16,textAlign: TextAlign.justify,),
                    SizedBox(height: 20,),
                    Text(CustomString.maintainKhata,style: CustomStyle.blackBoldlCust_12,textAlign: TextAlign.justify,),
                    Text('Minimum ₹ 200 and Maximum ₹ 5000 Khata Balance',style: CustomStyle.subTitle,textAlign: TextAlign.justify,),
                  ],
                )
              ),

              Container(
                height: 62,
                margin: EdgeInsets.only(left: 16,right: 16,bottom: 33),
                child: GetWarningTemplate(CustomString.dmsg_warning_khata,2),
              ),

              BtnContinue(CustomString.requestKhata, context,'RequestKhataPopup'),
              SizedBox(height: 30,),

            ],
          ),
        ));
  }

}