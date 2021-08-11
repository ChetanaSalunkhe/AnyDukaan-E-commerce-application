import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:checkbox_formfield/checkbox_list_tile_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PolicySetting extends State {

  @override
  Widget build(BuildContext context) {
    return PolicySetting_();
  }
}

class PolicySetting_ extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch(CustomString.privacyPolicy,true,false,'assets/serch.png','assets/module_info.png'),
      body:SingleChildScrollView(
        child:Container(
          margin: EdgeInsets.only(top: 16,bottom: 60,left: 16,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(CustomString.policyData,style: CustomStyle.blackNormalMerch_12,
                softWrap: true,maxLines: 7,textAlign: TextAlign.justify,overflow: TextOverflow.fade,),
              SizedBox(height: 16,),

              Text(CustomString.p1,style: CustomStyle.blackBoldMerch_16,
                softWrap: true,maxLines: 1,textAlign: TextAlign.justify,overflow: TextOverflow.fade,),
              SizedBox(height: 6,),
              Text(CustomString.policyData,style: CustomStyle.blackNormalMerch_12,
                softWrap: true,maxLines: 7,textAlign: TextAlign.justify,overflow: TextOverflow.fade,),
              SizedBox(height: 16,),

              Text(CustomString.p2,style: CustomStyle.blackBoldMerch_16,
                softWrap: true,maxLines: 1,textAlign: TextAlign.justify,overflow: TextOverflow.fade,),
              SizedBox(height: 6,),
              Text(CustomString.policyData,style: CustomStyle.blackNormalMerch_12,
                softWrap: true,maxLines: 7,textAlign: TextAlign.justify,overflow: TextOverflow.fade,),
              SizedBox(height: 16,),

              Text(CustomString.p3,style: CustomStyle.blackBoldMerch_16,
                softWrap: true,maxLines: 1,textAlign: TextAlign.justify,overflow: TextOverflow.fade,),
              SizedBox(height: 6,),
              Text(CustomString.policyData,style: CustomStyle.blackNormalMerch_12,
                softWrap: true,maxLines: 7,textAlign: TextAlign.justify,overflow: TextOverflow.fade,),
              SizedBox(height: 16,),

              Text(CustomString.p4,style: CustomStyle.blackBoldMerch_16,
                softWrap: true,maxLines: 1,textAlign: TextAlign.justify,overflow: TextOverflow.fade,),
              SizedBox(height: 6,),
              Text(CustomString.policyData,style: CustomStyle.blackNormalMerch_12,
                softWrap: true,maxLines: 7,textAlign: TextAlign.justify,overflow: TextOverflow.fade,),
              SizedBox(height: 16,),

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
                        return 'False!';
                      }
                    },
                  ),
                ),
              ),

              SizedBox(height: 16,),

              InkWell(
                onTap: (){
                  /*write continue logic here*/
                },
                child: BtnContinue(CustomString.continue_, context, 'Policy'),
              )

            ],
          ),
        ),
      )
    );
  }
}


