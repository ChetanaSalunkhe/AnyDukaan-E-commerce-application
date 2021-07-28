import 'package:anydukaan/customdesigns/deliverySetup.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

Container GetDelSetupDesign(){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 18,),
        Transform(
          transform: Matrix4.translationValues(10, 0, 0.0),
          child:Text(CustomString.queDelOpt,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
        ),
        SizedBox(height: 16,),
        Transform(
          transform: Matrix4.translationValues(-10, 0, 0.0),
          child: Theme(
            data:CustomStyle.getThemeCheckBox_RadioButton,
            child:AreaOptions(),
          ),
        ),
        SizedBox(height: 16,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform(
              transform: Matrix4.translationValues(10, 0, 0.0),
              child:Text(CustomString.queDelOpt1,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
            ),
            Container(
              child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child:Padding(
                            padding: EdgeInsets.only(right: 8),
                            child:  CustomStyle.getEditTextWithIcon(CustomString.start,
                                16, 1, TextInputType.text, Icons.keyboard_arrow_down, CustomColors.colorPrimaryBlue, 16, '8:00 AM ',
                                CustomColors.colorblackmerch),
                          )
                      ),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8),
                            child:  CustomStyle.getEditTextWithIcon(CustomString.end,
                                16, 1, TextInputType.text, Icons.keyboard_arrow_down, CustomColors.colorPrimaryBlue, 16, '8:00 PM ',
                                CustomColors.colorblackmerch),
                          )
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
        SizedBox(height: 16,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Transform(
              transform: Matrix4.translationValues(10, 0, 0.0),
              child:Text(CustomString.queDelOpt2,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
            ),
            Container(
              width: 140,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: CustomStyle.getEditTextBorder('₹ 20', 16, 1),),
            ),
          ],
        ),
        SizedBox(height: 16,),
        Column(
          children: [
            CWeight(),
            AddDelBoy(),

          ],
        ),
        SizedBox(height: 50,),
      ],
    ),
  );

}