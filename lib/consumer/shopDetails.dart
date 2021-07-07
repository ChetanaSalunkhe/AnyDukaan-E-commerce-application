import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/customPageIndicator.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/shopListDesign.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary"];

class ShopDetails extends State{

  @override
  Widget build(BuildContext context) {
    String title = CustomString.title_shops_near;

    return Scaffold(
        appBar: CustomAppBarWithoutSearch('Shop Details'),
        body: SingleChildScrollView(
            child: Container(
              color: CustomColors.background_lightblue,
              margin: EdgeInsets.zero,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14)
                    ),
                    child: Container(
                      //color: CustomColors.white,
                      margin: EdgeInsets.zero,
                      alignment: Alignment.center,
                      height: 318,
                      decoration: CustomStyle.getBoxShadow(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 16,),
                          CustomStyle.getImageBanner('assets/shop.png',328,144,BoxFit.cover),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
        bottomNavigationBar : CustomBottomBar()
    );
  }
}