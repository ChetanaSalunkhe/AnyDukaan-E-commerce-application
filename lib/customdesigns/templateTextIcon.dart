import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

Container GetTextIconTemplate(String text, IconData icon, double size,Color iconColor){
  return Container(
      height: 60,
      color: CustomColors.white,
      child: Card(
          color: CustomColors.white,
          elevation: 2,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0))
          ),
          child: Padding(
              padding: EdgeInsets.only(bottom: 16,top: 21,left: 16,right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('$text',style: CustomStyle.blackBoldlCust_14,textAlign:TextAlign.start,),
                  SizedBox(width: 6,),
                  CustomStyle.getIcons(icon, size, iconColor)
                ],
              )
          )
      )
  );
}