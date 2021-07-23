import 'package:anydukaan/consumer/itemsListing.dart';
import 'package:anydukaan/customdesigns/ListOrdersCard.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/ordersSummaryCard.dart';
import 'package:anydukaan/customdesigns/shopListDesign.dart';
import 'package:anydukaan/customdesigns/tabBarIndicator.dart';
import 'package:anydukaan/customdesigns/tabbarDesign.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary"];

class MyOrdersMerchant extends State{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:2,
      child: Scaffold(
        backgroundColor: CustomColors.background_lightblue,
        appBar: CustomAppBarWithoutSearch_Merchant('My Orders',true,true,'assets/help.png','assets/module_info.png','assets/hamburger_menu.png'),
        body: Container(
          //height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 12,),
              GetTabBar('Ongoing (03)','All Orders (05)'),
              Expanded(child: TabBarView(
                children: [
                  GetListOrdersCard(context,entries,'assets/share1.png',CustomColors.colorPrimaryBlue,'ongoing'),   //items list

                  GetListOrdersCard(context,entries,'assets/free_delivery.png',CustomColors.greenlight,'all'),
                ],
              ),),
            ],
          ),
        )
      ),
    );

  }
}