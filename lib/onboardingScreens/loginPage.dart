import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:checkbox_formfield/checkbox_list_tile_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              new Opacity(
                  opacity: 0.3,
                  child:Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 40,),
                        CustomStyle.getImageBanner('assets/loginboy.png', 220, 220, BoxFit.scaleDown),
                      ],
                    ),
                  ),
              ),
              new  Container(
                  alignment: Alignment.topCenter,
                  padding: new EdgeInsets.only(
                    top: 210,),
                  child:SingleChildScrollView(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14),
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: CustomStyle.getBoxShadow(),
                        child: Column(
                            children: [
                              //row for text and cross button
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child:Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 16),
                                          child: Text(CustomString.login,style: CustomStyle.boldValueText,
                                            textAlign: TextAlign.center,),)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Padding(
                                padding: EdgeInsets.only(left: 16,right: 16),
                                child: CustomStyle.getEditTextMobile('Mobile Number', 14,10,TextInputType.number,CustomStyle.blackBoldlCust_14),),
                              SizedBox(height: 10,),
                              Transform(
                                transform: Matrix4.translationValues(-12, 0, 0.0),
                                child:Theme(
                                  data:  CustomStyle.getThemeCheckBox_RadioButton,
                                  child: CheckboxListTileFormField(
                                    title: CustomStyle.CheckboxTitle(CustomString.iaccept),
                                    checkColor: CustomColors.white,
                                    activeColor: CustomColors.colorPrimaryBlue,
                                    onSaved: (bool value) {
                                    },
                                    validator: (bool value) {
                                      if (value) {
                                        return null;
                                      } else {
                                        return 'False';
                                      }
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 24,),
                              InkWell(
                                onTap: (){
                                  /*open otp dialogue*/
                                  AwesomeDialog(
                                    context: context,
                                    animType: AnimType.SCALE,
                                    dialogType: DialogType.NO_HEADER,
                                    body:Container(
                                      height: 188,
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          CustomStyle.getImageIcons('assets/location_blue.png', 18, CustomColors.colorPrimaryBlue),
                                          SizedBox(height: 12,),
                                          Text('Allow AnyDukaan to access this device’s location?',style: CustomStyle.blackNormalCust_14,textAlign: TextAlign.center,),
                                          SizedBox(height: 15,),
                                          CustomStyle.GetDivider(),
                                          TextButton(
                                            onPressed: (){
                                              /*allow logic here*/
                                              showModalBottomSheet(
                                                  context: context,
                                                  isScrollControlled: true,
                                                  isDismissible: true,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.only(
                                                        topRight: Radius.circular(14),
                                                        topLeft: Radius.circular(14)),),
                                                  builder: (context) => ModalBottomSheetDialog(popupStyle:'LoginOTP',params:{'keyType':'Consumer'}));
                                            },
                                            child: Text('Allow only while using the app ',style: CustomStyle.primaryBtnTextOrange,),),
                                          TextButton(
                                            onPressed: (){
                                              /*deny logic here*/
                                              Navigator.pop(context);
                                            },
                                            child:Text('Deny',style: CustomStyle.tabbarTitleText,),),

                                        ],
                                      ),
                                    ),
                                  ).show();
                                },
                                child:BtnContinue(CustomString.sendOTP,context,'LoginPopup'),
                              ),
                              SizedBox(height: 12,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Login with',style: CustomStyle.bottombarTitleText,textAlign: TextAlign.center,),
                                  SizedBox(width: 6,),
                                  CustomStyle.getImageBanner('assets/fblogo.png', 18, 18,BoxFit.scaleDown),
                                ],
                              ),
                              SizedBox(height: 12,),
                              /*open consumer and merchant registeration page as per flavor*/
                              Visibility(
                                visible: true,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(CustomString.didntAcct,style: CustomStyle.blackNormalMerch_12,),
                                      SizedBox(width: 6,),
                                      TextButton(
                                        onPressed: (){
                                          /*open registration page*/
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'LoginRegister',params: 'Consumer',)));
                                        },
                                        child:Text(CustomString.register,style: CustomStyle.tabbarTitleText,),),
                                    ],
                                  ),),
                              SizedBox(height: 12,),
                              TextButton(
                                onPressed: (){
                                  /*skip current image*/
                                },
                                child: Text('Skip for now',style: CustomStyle.primaryBtnTextOrange,),),
                            ],
                          ),
                      ),
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}