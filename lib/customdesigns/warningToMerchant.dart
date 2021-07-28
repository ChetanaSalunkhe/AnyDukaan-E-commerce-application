import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

Container GetWarning(){
  return Container(
      height: 100,
      color:CustomColors.red_card,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(CustomString.warning_Merchant,style:CustomStyle.whiteBoldMerch_12,textAlign: TextAlign.center,
            softWrap: true,overflow: TextOverflow.fade,maxLines: 4,),
        ],
      )
  );
}