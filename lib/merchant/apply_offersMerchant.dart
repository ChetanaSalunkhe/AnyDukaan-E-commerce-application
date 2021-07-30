import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/offerCardTemplate.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/customdesigns/tablebookingSetupCard.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:checkbox_formfield/checkbox_list_tile_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplyOffersMerchant extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch_Merchant('Apply Offers',true,true,'assets/help.png','assets/module_info.png','assets/hamburger_menu.png'),
      body:SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GetCardDesign(context,'assets/qty_offer.jpg','By Quantity','Offers'),
                SizedBox(height: 10,),
                GetCardDesign(context,'assets/pctg_off.png','By Percentage','Offers'),
                SizedBox(height: 10,),
                GetCardDesign(context,'assets/amt_off.jpg','By Amount','Offers'),
              ],
            )
        ),
      ),
    );

  }
}
