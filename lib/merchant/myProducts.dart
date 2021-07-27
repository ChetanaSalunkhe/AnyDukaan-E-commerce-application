import 'package:anydukaan/beanClasses/itemsBean.dart';
import 'package:anydukaan/consumer/homepage_gothrough.dart';
import 'package:anydukaan/consumer/myOrders.dart';
import 'package:anydukaan/customdesigns/listMyProdctsMerch.dart';
import 'package:anydukaan/customdesigns/merchAppBarWithSearch.dart';
import 'package:anydukaan/customdesigns/overlayDesign.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

List<ItemBeans> entries;

class MyProductsMerchant extends State{

  void _showOverlay(BuildContext context) {
    Navigator.of(context).push(TutorialOverlay());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithSearch_Merch(title:"My Products",searchHint:'Search Products',
        isLeadingVisible:true,isActionVisible:true,img: 'assets/audio_search.png',img1:'assets/help.png',
        img2: 'assets/module_info.png',imgLead: 'assets/hamburger_menu.png',),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*visible true if 0 products in list of merchant*/
              Visibility(
                  visible:false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 32,),
                          Text('0 Products',style: CustomStyle.blue_merch_normal_12,),
                        ],
                      ),
                      BlankState(msg:CustomString.noprod, isBtnVisibile:false),
                    ],
                  )),

              /*visible true if more than 0 products in merchant list*/
              Visibility(
                visible: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 32,),
                          Text('120 Products',style: CustomStyle.blue_merch_normal_12,),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: MyProdList_Merch(entries:entries),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 50.0,
        width: 58.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: CustomColors.colorPrimaryOrange,
            child: Icon(Icons.add,color: CustomColors.white,),
            onPressed: () {
              _showOverlay(context);
            },
          ),
        ),
      ),
    );
  }
}

class MyProdList_Merch extends StatefulWidget{
  List<ItemBeans> entries;

  MyProdList_Merch({Key key,this.entries}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    return MyProdListMerch(entries:entries);
  }

}
