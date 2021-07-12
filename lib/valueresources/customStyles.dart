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

  static var whiteBold14 = TextStyle(
      color: CustomColors.white,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.bold,
      fontSize: 14);

/*black text 16, normal*/
  static var blackBold16 = TextStyle(
      color: CustomColors.black,
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

  static var blueboldTitleText = TextStyle(
        color: CustomColors.colorPrimaryBlue,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.bold,
        fontSize: 18);

  /*blue title text*/
  static var blueBoldText16 = TextStyle(
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

  static var greenText12 = TextStyle(
      color: CustomColors.greenlight,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

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

  /******************************* Button outlines *******************************************************************/
  static var orangeOutline = BorderSide(
    color: CustomColors.colorPrimaryOrange,
    width: 0.5,
  );

  static var blackOutline = BorderSide(
    color: CustomColors.black,
    width: 0.5,
  );

  static var greenOutline = BorderSide(
    color: CustomColors.greenlight,
    width: 0.5,
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

  static getWalkThroughImages(String iName, double size){
    return Image.asset('$iName',width: size,height: size,alignment: Alignment.center,);
  }

  static getLogoImages(String iName, double width,double height){
    return Image.asset('$iName',width: width,height: height,alignment: Alignment.center,);
  }

  static getIcons(IconData icon, double size,Color color_){
    return Icon(icon,color: color_,size: size,);
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

 static getGradientBackground(){
   return BoxDecoration(
       gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           stops: [0.6,1],
           colors: [CustomColors.white, CustomColors.colorPrimaryBlue])
   );
 }

  static getGradientBackground_card(){
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.8,1],
            colors: [CustomColors.background_lightblue, CustomColors.white],)
    );
  }

  static getBoxShadow_gradient(){
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.8,1],
            colors: [CustomColors.background_lightblue, CustomColors.white]),
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