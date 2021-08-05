import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

Container GetMerchOrdStatusCards(){
  return Container(
    margin: EdgeInsets.only(left: 16,right: 16,bottom: 30),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child:GetCardDesign('assets/clock_pending.png','₹880','Pending',CustomColors.orange_light,CustomColors.colorPrimaryOrange),
            ),
            SizedBox(width: 16,),
            Expanded(
              child:GetCardDesign('assets/undelivered.png','₹1,080','Undelivered',CustomColors.orange_light,CustomColors.colorPrimaryOrange),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child:GetCardDesign('assets/rupees.png','₹4980','Refund',CustomColors.red_card_light,CustomColors.red),
            ),
            SizedBox(width: 16,),
            Expanded(
              child:GetCardDesign('assets/cancel_ord.png','₹480','Cancelled',CustomColors.red_card_light,CustomColors.red),
            ),
          ],
        ),
      ],
    ),
  );  
}

Container GetCardDesign(String image, String amt, String status,var backColor,var iconColor){
  return Container(
    height: 80,
   //width: 156,
    margin: EdgeInsets.only(bottom: 16,),
    child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                child: Container(
                  height: 45,
                  width: 45,
                  color: backColor,
                  child: CustomStyle.getImageIcons(image, 16, iconColor),
                ),
              ),
              SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$amt',style: CustomStyle.blackBoldMerch_18,),
                  SizedBox(height: 4,),
                  Text('$status',style: CustomStyle.blackBoldMerch_12,),
                ],
              )
            ],
          ),
        )
    ),
  );
}