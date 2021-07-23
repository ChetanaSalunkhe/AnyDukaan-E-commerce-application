import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

String ordStatus="";
Color containerColor;
Container GetCard(String image, String prodName, String qty, String amt, String totProdCnt,ordStatus){
if(ordStatus == 'Returns'){
  containerColor = CustomColors.red_card_light;
}else{
  containerColor = CustomColors.white;
}

  return Container(
    color: containerColor,
    child: Column(
      children: [
        SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              //set image of 1st product from order here
              child: CustomStyle.getImageBanner(image, 54, 54,BoxFit.cover),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //set product name here
                  Text('$prodName',style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
                  SizedBox(height: 3,),
                  //set product qty and uom here
                  Text('$qty',style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.start,),
                  SizedBox(height: 3,),
                  //set product lineamt here
                  Text('$amt',style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.start,),
                  SizedBox(height: 16,),

                ],
              ),),
            //set remaining products count here
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(CustomString.qty+" "+totProdCnt,style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.end,),),
          ],
        ),
        Divider(
          height: 1,
          thickness: 1.5,
          color: CustomColors.greyline,
        ),
      ],
    ),
  );
}