import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/warninTemplate.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class OrderDeliveredPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 515.0,
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
                        Text(CustomString.orderdelivered,style: CustomStyle.boldValueText,
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
              SizedBox(height: 26,),

              CustomStyle.getLogoImages('assets/ord_received.png', 180, 160.78),
              SizedBox(height: 22,),

              Text(CustomString.dmsg_warning_ordmark,style: CustomStyle.warningText,textAlign: TextAlign.justify,),

              SizedBox(height: 17,),
              Padding(
                padding: EdgeInsets.only(left: 28,right: 28,bottom: 29),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 7,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Rajesh Kirana Store',style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.start,),
                            Text('10 Products',style: CustomStyle.blackNormalCust_14,textAlign: TextAlign.start,),
                          ],
                        )),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                        child:Text('₹ 1260',style: CustomStyle.blackBoldCust_20,textAlign: TextAlign.end,),),
                  ],
                )
              ),

              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: BtnContinue(CustomString.yesDeliver, context,'OrdDeliveredPopup'),
              ),
              SizedBox(height: 20,),

              TextButton(
                onPressed: (){
                  //logic here
                  Navigator.pop(context);
                },
                child: Text(CustomString.notDeliver,style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.center,),),
              SizedBox(height: 20,),

            ],
          ),
        ));
  }

}