import 'package:anydukaan/customdesigns/tabBarIndicator.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:flutter/material.dart';

TabBar GetTabBar(String title1, String title2){
  return TabBar(
    indicatorColor: CustomColors.colorPrimaryBlue,
    labelColor: CustomColors.colorPrimaryBlue,
    unselectedLabelColor: CustomColors.grey_subtitle,
    indicator: /*UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3.0,color: CustomColors.colorPrimaryBlue,),  //height of indicator
                    insets: EdgeInsets.symmetric(horizontal:74.0),
                  //margin left and right to indicator
                ),*/    //customised indicator
    MD2Indicator(
      indicatorSize: MD2IndicatorSize.normal,
      indicatorHeight: 3.0,
      indicatorColor: CustomColors.colorPrimaryBlue,
      tabspacing: 74
    ),
    tabs: [
      Tab(text: '$title1',),
      Tab(text: '$title2',),
    ],
  );
}

TabBar GetTabBar_3(String title1, String title2,String title3){
  return TabBar(
    indicatorColor: CustomColors.colorPrimaryBlue,
    labelColor: CustomColors.colorPrimaryBlue,
    unselectedLabelColor: CustomColors.grey_subtitle,
    indicator: /*UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3.0,color: CustomColors.colorPrimaryBlue,),  //height of indicator
                    insets: EdgeInsets.symmetric(horizontal:74.0),
                  //margin left and right to indicator
                ),*/    //customised indicator
    MD2Indicator(
      indicatorSize: MD2IndicatorSize.normal,
      indicatorHeight: 3.0,
      indicatorColor: CustomColors.colorPrimaryBlue,
        tabspacing: 48
    ),
    tabs: [
      Tab(text: '$title1',),
      Tab(text: '$title2',),
      Tab(text: '$title3',),
    ],
  );
}
