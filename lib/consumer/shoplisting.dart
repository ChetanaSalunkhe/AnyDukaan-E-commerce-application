import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/customPageIndicator.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/shopListDesign.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary"];

final List<List<String>> entries_banners = [
  ["assets/bannerimg2.png",],
  ["assets/banner1home.png",],
  ["assets/banner_2.png",],
];

class ShopListing extends State{

  @override
  Widget build(BuildContext context) {
    String title = CustomString.title_shops_near;

    return Scaffold(
      appBar: CustomAppBarWithoutSearch(CustomString.dukans,true,true,'assets/serch.png','assets/module_info.png'),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              //banner image sliderwk
              AdvPages(iName: 'assets/bannerimg2.png',width:360,height:150,boxHeight: 150,entries:entries_banners),

              //text title
              blackNormalCust_14(title:'$title',),

              //listview
              Expanded(
                child: CustomListViewShops(entries: entries,),
              )

            ],
          ),
        )

      ),
      bottomNavigationBar : CustomBottomBar()
    );
  }
}

//title
class blackNormalCust_14 extends StatefulWidget{
  String title ="";
  blackNormalCust_14({Key key,this.title}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    print('$title');
    return blackNormalCust_14View(title1:'$title');
  }

}

class blackNormalCust_14View extends State{
  String title1 ="";
  blackNormalCust_14View({Key key,this.title1});

  @override
  Widget build(BuildContext context) {
    print('$title1');
    return Container(
      margin: EdgeInsets.only(left: 16,right: 16),
      child: Row(
        children: [
          Text('$title1',style: CustomStyle.blackNormalCust_14,),
          Text(' (06)',style: CustomStyle.blackBoldlCust_14,),
        ],
      )

    );
  }


}


