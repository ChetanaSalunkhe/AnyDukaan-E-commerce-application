
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/tablebookingSetupCard.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:checkbox_formfield/checkbox_list_tile_formfield.dart';
import 'package:flutter/material.dart';

class PackagingMerchant extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch_Merchant('Packaging',true,true,'','assets/help.png','assets/hamburger_menu.png'),
      body:SingleChildScrollView(
        child:  Container(
          child: GetTabDesignTable(context),
        ),
      ),
      bottomSheet: Container(
        color: Colors.transparent,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                /*call API to add delivery agent to server*/
              },
              child:BtnContinue(CustomString.saveChanges, context, 'tableSetup'),
            ),
          ],
        ),
      ),
    );

  }
}

Column GetTabDesignTable(context){
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 16,right: 16,top: 16),
        child: GetPackagingSetupCard(context),
      ),
    ],
  );
}

Container GetPackagingSetupCard(BuildContext context){
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
              title:CustomStyle.CheckboxTitle(CustomString.chrgPckg),
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
              child:Text(CustomString.chrg_Pckg,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
            ),
            Container(
              width: 140,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: CustomStyle.getEditTextBorder('₹ 0', 14, 1),),
            ),
          ],
        ),
        SizedBox(height: 18,),
        /*description*/
        Container(
          margin: EdgeInsets.only(left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(CustomString.pckgDesc,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
            ],
          ),
        ),
        SizedBox(height: 16,),
        Container(
            child:Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  side: CustomStyle.greyOutline,
                ),
                child:Padding(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 8,bottom: 8),
                  child: CustomStyle.getEditText('Enter your packaging material and method', 14, 10)
                )
            )
        ),
      ],
    ),
  );

}
