import 'package:anydukaan/customdesigns/cardSetupMerch.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:checkbox_formfield/checkbox_list_tile_formfield.dart';
import 'package:flutter/material.dart';

Container GetTableBookingSetupCard(BuildContext context){
  return Container(
    child:Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform(
          transform: Matrix4.translationValues(-16, -5, 0.0),
          child:Theme(
            data:  CustomStyle.getThemeCheckBox_RadioButton,
            child: CheckboxListTileFormField(
              title:CustomStyle.CheckboxTitle(CustomString.accptBookings),
              checkColor: CustomColors.white,
              activeColor: CustomColors.colorPrimaryBlue,
              onSaved: (bool value) {
              },
              validator: (bool value) {
                if (value) {
                  return null;
                } else {
                  return 'False!';
                }
              },
            ),
          ),
        ),
        SizedBox(height: 12,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform(
              transform: Matrix4.translationValues(10, 0, 0.0),
              child:Text(CustomString.queProdOpt3,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
            ),
            Container(
              width: 140,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: CustomStyle.getEditTextBorder('2', 14, 1),),
            ),
          ],
        ),
        SizedBox(height: 18,),
        Transform(
            transform: Matrix4.translationValues(10, 0, 0.0),
            child:Row(
              children: [
                Text(CustomString.queProdOpt4,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
                Text(CustomString.specialseats,style: CustomStyle.subTitle,textAlign: TextAlign.start,),
              ],
            )
        ),
        SizedBox(height: 18,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetCardSetupTile(CustomString.numseats,CustomString.cost),
            GetCardSetup('10 Seats','₹ 120',context),
          ],
        ),
        SizedBox(height: 18,),
      ],
    ),
  );

}