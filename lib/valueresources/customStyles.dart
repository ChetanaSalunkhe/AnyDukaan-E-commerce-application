import 'package:flutter/material.dart';
import 'customColors.dart';
import 'customStrings.dart';

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

  /*black title bold text*/
  static var blackboldTitleText = TextStyle(
        color: CustomColors.black,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.bold,
        fontSize: 18);

  /*blue title text*/
  static var blueTitleText = TextStyle(
        color: CustomColors.colorPrimaryBlue,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.bold,
        fontSize: 16);

  /*bottombar title text*/
  static var bottombarTitleText = TextStyle(
        color: CustomColors.colorPrimaryBlue,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.bold,
        fontSize: 12);

  /*bottombar title text*/
  static var tabbarTitleText = TextStyle(
        color: CustomColors.colorPrimaryBlue,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.bold,
        fontSize: 14);

  /*normal text description*/
  static var textTitle = TextStyle(
      color: CustomColors.black,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 14);

  /*bold text description 14*/
  static var textsemiboldblackTitle = TextStyle(
      color: CustomColors.black,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.bold,
      fontSize: 14);

  /*bold text description 12*/
  static var textsemiboldblackTitle_12 = TextStyle(
      color: CustomColors.black,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.bold,
      fontSize: 12);

  /*grey subtitle text*/
  static var subTitle = TextStyle(
      color: CustomColors.grey_subtitle,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  /*grey tabbar text*/
  static var greyTabbarsubTitle = TextStyle(
      color: CustomColors.grey_subtitle,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 14);

  /*black subtitle text 12*/
  static var subTitleBlack = TextStyle(
      color: CustomColors.black,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  /*white subtitle text 12*/
  static var subTitleWhite= TextStyle(
      color: CustomColors.white,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  /*warning text*/
  static var warningText = TextStyle(
      color: CustomColors.red,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  /*free delivery text*/
  static var greenText10 = TextStyle(
      color: CustomColors.greenlight,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 10);

  /*free delivery text*/
  static var greyText10 = TextStyle(
      color: CustomColors.grey_subtitle,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 10);

  /*orange clickable primary button text*/
  static var primaryBtnTextOrange = TextStyle(
      color: CustomColors.colorPrimaryOrange,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.bold,
      fontSize: 14);

  /*orange clickable primary button text*/
  static var primaryBtnTextOrange_12 = TextStyle(
      color: CustomColors.colorPrimaryOrange,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.bold,
      fontSize: 12);

  /*orange clickable primary button text*/
  static var offerOrange_12 = TextStyle(
      color: CustomColors.colorPrimaryOrange,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.bold,
      fontSize: 10);

  /*text with cutting line*/
  static var textWithLine =  TextStyle(
      color: CustomColors.grey_subtitle,
      decorationColor: CustomColors.grey_subtitle,
      decorationStyle: TextDecorationStyle.solid,
      decoration:
      TextDecoration.lineThrough,
      fontSize: 12,
    );

  /************************************ Images custom designs ******************************************************/
  static var imageGrid = Image.asset("assets/rest.png",width: 24,height: 24,);

  static getImageBanner(String imgName,double _width, double _height, BoxFit boxFit){
    return Image.asset('$imgName',width: _width,height: _height,fit: boxFit,alignment: Alignment.center,);
  }

  static getImageRow(String imgName){
    return Image.asset('$imgName',width: 89,height: 99,fit: BoxFit.fill,alignment: Alignment.center,);
  }

  static getImageIcons(String imgName,double size,Color color){
    return Image.asset('$imgName',width: size,height: size,color: color,alignment: Alignment.center,);
  }

  /*********************************** EditText custom designs ****************************************************/
  static getEditTextSearch(String hint,double size ){
    return TextField(
    decoration: InputDecoration(hintText: '$hint',
    border: InputBorder.none,),
    style: TextStyle(fontSize: size,fontWeight: FontWeight.normal, color: CustomColors.black,),
    cursorColor: CustomColors.black,
    textAlignVertical: TextAlignVertical.center,
    textAlign: TextAlign.start,);
  }

  /*********************************** Container box shadow decoration ******************************************/
 static getBoxShadow(){
   return BoxDecoration(
     //color: CustomColors.white,
     boxShadow: [
       BoxShadow(
           color: CustomColors.black,
           blurRadius: 0.0,
           offset: Offset(0.0, 0.0)
       ),
       BoxShadow(
           color: CustomColors.white,
           blurRadius: 0.3,
           offset: Offset(0, 0)
       )
     ],
   );
 }

}