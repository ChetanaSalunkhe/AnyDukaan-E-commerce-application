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

bool isTabBarRest=false;

String tabTitle1='Pending(0)';
String tabTitle2='Confirmed(12)';
String tabTitle3='All Orders(22)';
String tab1key='pending';
String tab2key='confirmed';
String tab3key='all';

class MyOrdersMerchant extends State{
  int tabCount;
  bool isTabBarShop=true;

  MyOrdersMerchant({Key key,this.isTabBarShop});

  @override
  Widget build(BuildContext context) {

    setState(() {
      if(isTabBarShop){
        tabCount=3;
        tabTitle1='Pending(10)';
        tabTitle2='Confirmed(12)';
        tabTitle3='All Orders(22)';
        tab1key='pending';
        tab2key='confirmed';
        tab3key='all';
      }else{
        tabCount=2;
        tabTitle1='Ongoing(10)';
        tabTitle2='All Orders(12)';
        tabTitle3='';
        tab1key='ongoing';
        tab2key='all';
        tab3key='';
      }
    });

    return DefaultTabController(
      length:isTabBarShop==true?3:2,
      child: Scaffold(
        backgroundColor: CustomColors.background_lightblue,
        appBar: CustomAppBarWithoutSearch_Merchant('My Orders',true,true,'assets/help.png','assets/module_info.png','assets/hamburger_menu.png'),
        body: Container(
          child: tabCount>2?GetTabDesignShop(context):GetTabDesignRest(context),
        )
      ),
    );

  }
}

Column GetTabDesignRest(context){
   return Column(
     children: [
       GetTabBar('Ongoing (03)','All Orders (05)',),
       Expanded(child: TabBarView(
         children: [
           GetListOrdersCard(context,entries,'assets/share1.png',CustomColors.colorPrimaryBlue,'ongoing',entries.length),   //items list

           GetListOrdersCard(context,entries,'assets/free_delivery.png',CustomColors.greenlight,'all',entries.length),
         ],
       ),),
     ],
   );
}

Column GetTabDesignShop(context){
  return Column(
    children: [
      GetTabBar_3('$tabTitle1','$tabTitle2','$tabTitle3',),
      Expanded(child: TabBarView(
        children: [
          GetListOrdersCard(context,entries,'assets/share1.png',CustomColors.colorPrimaryBlue,'pending',entries.length),   //items list

          GetListOrdersCard(context,entries,'assets/free_delivery.png',CustomColors.greenlight,'confirmed',entries.length),

          GetListOrdersCard(context,entries,'assets/free_delivery.png',CustomColors.greenlight,'all',entries.length),
        ],
      ),),
    ],
  );
}