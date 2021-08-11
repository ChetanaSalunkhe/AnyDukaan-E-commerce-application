import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/offerCardTemplate.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:flutter/material.dart';

class PromotionsMerchant extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch_Merchant(CustomString.promotions,true,true,'assets/help.png','assets/module_info.png','assets/hamburger_menu.png'),
      body:SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GetCardDesign(context,'assets/sms_bundle.jpg','SMS Bundles','Promotions'),
                SizedBox(height: 10,),
                GetCardDesign(context,'assets/banner_bundle.png','Banners','Promotions'),
                SizedBox(height: 10,),
                GetCardDesign(context,'assets/whtsapp_promo.png','Whatsapp Promotions','Promotions'),
              ],
            )
        ),
      ),
    );

  }
}