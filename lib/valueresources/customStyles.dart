import 'package:flutter/material.dart';

import 'customColors.dart';

/*Created by Chetana*/
class CustomStyle{
  /*custom text styles to use dynamically*/
  /*progressbartitle*/
  static var progressTitle = TextStyle(
        color: CustomColors.white,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.bold,
        fontSize: 16);

  /*black clickable text*/
  static var boldValueText = TextStyle(
        color: CustomColors.black,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.bold,
        fontSize: 16);

  /*blue title text*/
  static var blueTitleText = TextStyle(
        color: CustomColors.colorPrimaryBlue,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.bold,
        fontSize: 16);

  /*normal text description*/
  static var textTitle = TextStyle(
      color: CustomColors.black,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 14);

  /*grey subtitle text*/
  static var subTitle = TextStyle(
      color: CustomColors.grey_subtitle,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  /*warning text*/
  static var warningText = TextStyle(
      color: CustomColors.red,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  /*orange clickable primary button text*/
  static var primaryBtnTextOrange = TextStyle(
      color: CustomColors.colorPrimaryOrange,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.bold,
      fontSize: 14);


}