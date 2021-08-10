import 'package:bubble/bubble.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'customColors.dart';
import 'customStrings.dart';

/*Created by Chetana*/
class CustomStyle{
  /*custom text styles to use dynamically*/
  /*-----------------------white-----------------------------------------------*/
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

  static var whiteBoldCust_12 = TextStyle(
      color: CustomColors.white,
     fontFamily: 'Open Sans',
      fontWeight: FontWeight.bold,
      fontSize: 12);

  /*white subtitle text 12*/
  static var whiteNormalCust_12= TextStyle(
      color: CustomColors.white,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  static var whiteBoldMerch_12= TextStyle(
      color: CustomColors.white,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 12);

  static var whiteBoldMerch_14= TextStyle(
      color: CustomColors.white,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 14);

  static var whiteNormalCust_10= TextStyle(
      color: CustomColors.white,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 10);

  /*-----------------------black consumer-----------------------------------------------*/

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
  static var blackBoldCust_18 = TextStyle(
        color: CustomColors.black,
       fontFamily: 'Open Sans',
        fontWeight: FontWeight.bold,
        fontSize: 18);

  /*normal text description*/
  static var blackNormalCust_14 = TextStyle(
      color: CustomColors.black,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 14);

  /*bold text description 14*/
  static var blackBoldlCust_14 = TextStyle(
      color: CustomColors.black,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.bold,
      fontSize: 14);

  /*bold text description 12*/
  static var blackBoldlCust_12 = TextStyle(
      color: CustomColors.black,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.bold,
      fontSize: 12);

/*  static var blackNormalCust_14 = TextStyle(
      color: CustomColors.black,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 14);*/

  static var blackBoldCust_20 = TextStyle(
      color: CustomColors.black,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.bold,
      fontSize: 20);

  /*black subtitle text 12*/
  static var subTitleBlack = TextStyle(
      color: CustomColors.black,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  /*----------------------------------------black merchant----------------------------------------------------*/
  /*black clickable text*/
  static var blackBoldMerch_16 = TextStyle(
      color: CustomColors.colorblackmerch,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 16);

  static var blackNormalMerch_16 = TextStyle(
      color: CustomColors.colorblackmerch,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.normal,
      fontSize: 16);

  /*black title bold text*/
  static var blackBoldMerch_18 = TextStyle(
      color: CustomColors.colorblackmerch,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 18);

  /*normal text description*/
  static var blackNormalMerch_14 = TextStyle(
      color: CustomColors.colorblackmerch,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.normal,
      fontSize: 14);

  /*bold text description 14*/
  static var blackBoldMerch_14 = TextStyle(
      color: CustomColors.colorblackmerch,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 14);

  /*bold text description 12*/
  static var blackBoldMerch_12 = TextStyle(
      color: CustomColors.colorblackmerch,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 12);

  static var blackBoldMerch_10= TextStyle(
      color: CustomColors.colorblackmerch,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 10);

  static var blackoldMerch_20 = TextStyle(
      color: CustomColors.colorblackmerch,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 20);

  /*black subtitle text 12*/
  static var blackNormalMerch_12 = TextStyle(
      color: CustomColors.colorblackmerch,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  static var blackNormalMerch_24 = TextStyle(
      color: CustomColors.colorblackmerch,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 24);

  static var blackNormalMerch_20 = TextStyle(
      color: CustomColors.colorblackmerch,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 20);

  /*-----------------------blue-----------------------------------------------*/

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

  static var offerTitleText = TextStyle(
        color: CustomColors.colorPrimaryBlue,
       fontFamily: 'Open Sans',
        fontWeight: FontWeight.normal,
        fontSize: 10);

  static var blueNormalMerch_12_underline = TextStyle(
      color: CustomColors.blueborder,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12,
      decoration: TextDecoration.underline);

  static var blue_merch_normal_12 = TextStyle(
      color: CustomColors.colorPrimaryBlue,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

    static var blue_merch_bold_12 = TextStyle(
      color: CustomColors.colorPrimaryBlue,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 12);

  static var blue_merch_normal_10 = TextStyle(
      color: CustomColors.colorPrimaryBlue,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.normal,
      fontSize: 10);

  static var blue_merch_normal_18 = TextStyle(
      color: CustomColors.colorPrimaryBlue,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 18);

  /*-----------------------grey-----------------------------------------------*/

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

  /*free delivery text*/
  static var greyText10 = TextStyle(
      color: CustomColors.grey_subtitle,
      fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
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

  static var subTitle_merch = TextStyle(
      color: CustomColors.grey_subtitle,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  static var subTitle_merch_14 = TextStyle(
      color: CustomColors.grey_subtitle,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.normal,
      fontSize: 14);
  /*-----------------------red-----------------------------------------------*/

  /*warning text*/
  static var warningText = TextStyle(
      color: CustomColors.red,
     fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  static var warningText_merch_12 = TextStyle(
      color: CustomColors.red,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  static var warningText_merch_bold_12 = TextStyle(
      color: CustomColors.red,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 12);

  static var warningText_merch_normal_10 = TextStyle(
      color: CustomColors.red,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.normal,
      fontSize: 10);

  /*-----------------------green-----------------------------------------------*/

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

  static var greenText10_merch = TextStyle(
      color: CustomColors.greenlight,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.normal,
      fontSize: 10);

  static var greenText12_merch = TextStyle(
      color: CustomColors.greenlight,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);
  /*-----------------------orange-----------------------------------------------*/

  /*orange clickable primary button text*/
  static var textOrange16 = TextStyle(
      color: CustomColors.colorPrimaryOrange,
     fontFamily: 'Open Sans',
      fontWeight: FontWeight.bold,
      fontSize: 16);

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

  static var orangeText12 = TextStyle(
      color: CustomColors.colorPrimaryOrange,
     fontFamily: 'Open Sans',
      fontWeight: FontWeight.normal,
      fontSize: 12);

  static var orange_merch_24 = TextStyle(
      color: CustomColors.colorPrimaryOrange,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 24);

  static var orange_merch_16 = TextStyle(
      color: CustomColors.colorPrimaryOrange,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 16);

  static var orangeMerch_12 = TextStyle(
      color: CustomColors.colorPrimaryOrange,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 12);

  static var orange_merch_20 = TextStyle(
      color: CustomColors.colorPrimaryOrange,
      fontFamily: 'Work Sans',
      fontWeight: FontWeight.bold,
      fontSize: 20);

  /******************************* Button outlines *******************************************************************/
  static var orangeOutline = BorderSide(
    color: CustomColors.colorPrimaryOrange,
    width: 0.5,
  );

  static var issueCardOutline = BorderSide(
    color: CustomColors.blueSelected,
    width: 0.5,
  );

  static var blueOutline = BorderSide(
    color: CustomColors.colorPrimaryBlue,
    width: 0.5,
  );

  static var blackOutline = BorderSide(
    color: CustomColors.black,
    width: 0.5,
  );

  static var greyOutline = BorderSide(
    color: CustomColors.greydark,
    width: 0.5,
  );

  static var greenOutline = BorderSide(
    color: CustomColors.greenlight,
    width: 0.5,
  );

  static var redOutline = BorderSide(
    color: CustomColors.red,
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
  static getEditTextSearch(String hint,double size,int maxline){
    return TextField(
    decoration: InputDecoration(hintText: '$hint',
    border: InputBorder.none,),
    style: TextStyle(fontSize: size,fontWeight: FontWeight.normal, color: CustomColors.black,),
    cursorColor: CustomColors.black,
    textAlignVertical: TextAlignVertical.center,
    textAlign: TextAlign.justify,
    maxLines: maxline,);
  }

  static getEditTextItalic(String hint,double size,int maxline){
    return TextField(
      decoration: InputDecoration(hintText: '$hint',
        border: InputBorder.none,),
      style: TextStyle(fontSize: size,fontWeight: FontWeight.w200,fontStyle: FontStyle.italic, color: CustomColors.black,),
      cursorColor: CustomColors.black,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.justify,
      maxLines: maxline,);
  }

  static getEditTextBorder(String hint,double size,int maxline){
    return TextField(
      decoration: InputDecoration(hintText: '$hint',),
      style: TextStyle(fontSize: size,fontWeight: FontWeight.normal, color: CustomColors.black,),
      cursorColor: CustomColors.black,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.start,
      maxLines: maxline,);
  }

  static getEditText(String hint,double size,int maxline){
    return TextField(
      decoration: InputDecoration(hintText: '$hint',
        border: InputBorder.none,),
      style: TextStyle(fontSize: size,fontWeight: FontWeight.normal, color: CustomColors.black,),
      cursorColor: CustomColors.black,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.justify,
      maxLines: maxline,);
  }

  static getEditTextMobile(String label, double size,int maxlength,TextInputType type, var labelStyle/*, bool isError, String errText*/){
    return TextField(
      keyboardType: type,
      decoration: InputDecoration(labelText: '$label', hoverColor: CustomColors.grey_subtitle,
        labelStyle: labelStyle,
      ),
      style: TextStyle(fontSize: size,fontWeight: FontWeight.normal, color: CustomColors.black,),
      minLines: 1,
      maxLength: maxlength,
      cursorColor: CustomColors.black,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.start,);
  }

  static getEditTextEnterDetails(String label, double size,int maxlines,TextInputType type, var labelStyle/*, bool isError, String errText*/){
    return TextField(
      keyboardType: type,
      decoration: InputDecoration(labelText: '$label', hoverColor: CustomColors.grey_subtitle,
        labelStyle: labelStyle,
        //errorText:isError==true?'$errText':'',
      ),
      style: TextStyle(fontSize: size,fontWeight: FontWeight.normal, color: CustomColors.black,),
      minLines: 1,
      maxLines: maxlines,
      cursorColor: CustomColors.black,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.start,);
  }

  static getEditTextWithIcon(String label, double size,int maxlines,TextInputType type,IconData icon,Color iconColor,double iconsize,
      String initVal,var textColor,bool enable){
    return TextFormField(
      keyboardType: type,
      initialValue: initVal,
      decoration: InputDecoration(labelText: '$label', hoverColor: CustomColors.grey_subtitle,
        suffixIcon: Icon(icon,color: iconColor,size: iconsize,),),
      style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal, color: textColor,),
      minLines: 1,
      maxLines: maxlines,
      cursorColor: CustomColors.black,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.start,
      enabled: enable,
      textCapitalization: TextCapitalization.words,);
  }

  static getEditTextWithPlusMinus(String label, double size,int maxlines,TextInputType type,IconData icon,IconData iconPrefix,Color iconColor,double iconsize,){
    return TextField(
      keyboardType: type,
      decoration: InputDecoration(labelText: '$label', hoverColor: CustomColors.grey_subtitle,
        suffixIcon: InkWell(
          onTap: (){
            //add minus logic here
          },
          child: Icon(icon,color: iconColor,size: iconsize,),
        ),
      prefixIcon: InkWell(
        onTap: (){
          //add plus logic here
        },
        child: Icon(iconPrefix,color: iconColor,size: iconsize,),
      ),),
      style: TextStyle(fontSize: size,fontWeight: FontWeight.normal, color: CustomColors.black,),
      minLines: 1,
      maxLines: maxlines,
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
           stops: [0.5,1],
           colors: [CustomColors.white, CustomColors.blueborder])
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
          stops: [0.5,0.9],
          colors: [CustomColors.blueBackground, CustomColors.white]),
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

  static getBoxShadow_none(){
    return BoxDecoration(
    );
  }

  static getOverlayBlue(){
    return BoxDecoration(
      color: CustomColors.blueboxshade,
        image: new DecorationImage(
          fit: BoxFit.cover,
          colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.2),
              BlendMode.dstATop),
          image: new NetworkImage(
            'http://www.server.com/image.jpg',
          ),
        ),
    );
  }

  static getDigitalClock(){
    return DigitalClock(
      areaDecoration: BoxDecoration(color: Colors.transparent),
      areaAligment: AlignmentDirectional.center,
      hourMinuteDigitDecoration: BoxDecoration(color: Colors.transparent),
      hourMinuteDigitTextStyle: TextStyle(fontSize: 65,color: CustomColors.colorPrimaryBlue,),
      is24HourTimeFormat: false,
      showSecondsDigit: false,
      digitAnimationStyle: Curves.decelerate,
      amPmDigitTextStyle: TextStyle(fontSize: 20,color: CustomColors.colorPrimaryBlue, fontWeight: FontWeight.normal),
    );
  }

  static var getThemeCheckBox_RadioButton = ThemeData(unselectedWidgetColor: CustomColors.colorPrimaryBlue,);

  static GetRatingBar(double ratingCnt, IconData icon,Color colr,double size){
    return  RatingBar.builder(
      initialRating: ratingCnt,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: size,
      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
      itemBuilder: (context, _) => Icon(icon,
        color:colr,
      ),
      onRatingUpdate: (rating) {
        ratingCnt=rating;
        print(rating);
      },
    );
  }

  static getIconTextTemplate(IconData icon, Color iconTextcolor,String text,var textStyle){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomStyle.getIcons(icon, 16, iconTextcolor),
        SizedBox(width: 4,),
        Text('$text',style: textStyle,textAlign: TextAlign.center,)
      ],
    );
  }

  static GetDivider(){
    return  Divider(
      height: 1,
      thickness: 0.5,
      color: CustomColors.greyline,
    );
  }

  static GetDividerVertical(){
    return VerticalDivider(
      width: 1,
      thickness: 1,
      color: CustomColors.greyline,
    );
  }

  static CheckboxTitle(String title){
    return Transform(
      transform: Matrix4.translationValues(-12, 0, 0.0),
      child: new Text('$title',style: CustomStyle.blackBoldMerch_12,),
    );
  }

  static ReceiverBubble(String msg,BuildContext context){
    return Bubble(
      padding: BubbleEdges.all(11),
      margin: BubbleEdges.only(top: 10),
      nip: BubbleNip.rightTop,
      color:CustomColors.colorPrimaryOrange,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('$msg', textAlign: TextAlign.right,style: CustomStyle.whiteNormalCust_12,
            softWrap: true,overflow: TextOverflow.fade,),
          SizedBox(height: 4,),
          Text('10.10 am', textAlign: TextAlign.right,style: CustomStyle.whiteNormalCust_10,),
        ],
      )
    );
  }

  static SenderBubble(String msg){
    return Bubble(
      padding: BubbleEdges.all(11),
      margin: BubbleEdges.only(top: 10),
      nip: BubbleNip.leftTop,
      color:CustomColors.colorPrimaryBlue,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('$msg', textAlign: TextAlign.left,style: CustomStyle.whiteNormalCust_12,),
          SizedBox(height: 4,),
          Text('10.10 am', textAlign: TextAlign.right,style: CustomStyle.whiteNormalCust_10,),
        ],
      )
    );
  }

}
