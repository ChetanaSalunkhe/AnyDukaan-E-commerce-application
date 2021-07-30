import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/expanded_categoryList.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar2.dart';
import 'package:anydukaan/customdesigns/paymentOptionSetup.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPrefSetting extends State {

  @override
  Widget build(BuildContext context) {
    return PaymentPrefSetting_();
  }
}

class PaymentPrefSetting_ extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch(CustomString.payPref,true,false,'assets/serch.png','assets/module_info.png'),
      body:Container(
        margin: EdgeInsets.only(top: 16,bottom: 60,left: 16,right: 16),
        child: Column(
          children: [
            PaymentOpt(),
          ],
        ),
      ),
    );
  }
}


