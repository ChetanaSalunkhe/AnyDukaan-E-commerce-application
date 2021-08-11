import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

Container TextViewBtnCard(String text){
  return Container(
    child: Row(
      children: [
        Flexible(
          flex: 8,
            fit: FlexFit.tight,
            child: Text('Pending Orders (5)',style: CustomStyle.blackBoldMerch_18,)),
        Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Row(
              children: [
                Text(CustomString.viewAll_small,style: CustomStyle.orangeMerch_12,),
                SizedBox(width: 4,),
                CustomStyle.getIcons(Icons.arrow_forward_ios_outlined, 12, CustomColors.colorPrimaryOrange)
              ],
            )),
      ],
    ),
  );

}