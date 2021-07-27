import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

Container GetTemplate(String title, String image){
  return Container(
    width: 103,
    height: 103,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 7,
            fit: FlexFit.loose,
            child: CustomStyle.getImageIcons('$image', 36, CustomColors.colorblackmerch),
          ),
          Expanded(
            flex: 3,
            child:Text('$title',style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.center,),),
        ],
      ),
    ),
  );
}