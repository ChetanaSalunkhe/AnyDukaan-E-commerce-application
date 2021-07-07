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

class ShopListing extends State{

  @override
  Widget build(BuildContext context) {
    String title = CustomString.title_shops_near;

    return Scaffold(
      appBar: CustomAppBarWithoutSearch('Dukaans'),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              //banner image slider
              AdvPages(),

              //text title
              TextTitle(title:'$title',),

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
class TextTitle extends StatefulWidget{
  String title ="";
  TextTitle({Key key,this.title}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    print('$title');
    return TextTitleView(title1:'$title');
  }

}

class TextTitleView extends State{
  String title1 ="";
  TextTitleView({Key key,this.title1});

  @override
  Widget build(BuildContext context) {
    print('$title1');
    return Container(
      margin: EdgeInsets.only(left: 16,right: 16),
      child: Row(
        children: [
          Text('$title1',style: CustomStyle.textTitle,),
          Text(' (06)',style: CustomStyle.textsemiboldblackTitle,),
        ],
      )

    );
  }


}


