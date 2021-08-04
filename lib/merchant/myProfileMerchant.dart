import 'package:anydukaan/customdesigns/cardSetupMerch.dart';
import 'package:anydukaan/customdesigns/customPageIndicator.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<List<String>> entries_banners = [
  ['assets/dummyboyimg.jpg',],
  ['assets/dummyboyimg.jpg',],
  ['assets/dummyboyimg.jpg',],
];

final List<List<String>> entries_banners_shops = [
  ["assets/shop.png",],
  ["assets/shop.png",],
  ["assets/shop.png",],
];

class MyProfileMerchant extends State{
  String params="";
  MyProfileMerchant({Key key,this.params});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch(params=='Profile'?'My Profile':'Shop Details',true,true,'','assets/edit.png',),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*upload image or get scanned image here*/
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child:Container(
                  width: MediaQuery.of(context).size.width,
                  height: 306,
                  decoration: CustomStyle.getBoxShadow_gradient(),
                  child:AdvPages(iName:params=='Profile'?'assets/dummyboyimg.jpg':'assets/shop.png',
                    width:MediaQuery.of(context).size.width,height:282,boxHeight: 282,
                      entries:params=='Profile'?entries_banners:entries_banners_shops),
                ),
              ),
              /*name*/
              CustomStyle.getEditTextEnterDetails('Name', 14, 1, TextInputType.text,CustomStyle.blackBoldMerch_16),
              /*mobile*/
              Visibility(
                visible: params=='Profile'?true:false,
                  child:CustomStyle.getEditTextMobile('Mobile', 14, 10, TextInputType.number,CustomStyle.blackBoldMerch_16),),
              SizedBox(height: 8,),

              /*location*/
              Visibility(
                visible: params=='ShopDetails'?true:false,
                child:CustomStyle.getEditTextEnterDetails('Location', 14, 6, TextInputType.text,CustomStyle.blackBoldMerch_16),),
              SizedBox(height: 8,),

              /*selected segment*/
              Visibility(
                visible: params=='ShopDetails'?true:false,
                child:CustomStyle.getEditTextEnterDetails('Selected Segment', 14, 1, TextInputType.text,CustomStyle.blackBoldMerch_16),),
              SizedBox(height: 10,),

              /*working hrs*/
              Visibility(
                visible: params=='ShopDetails'?true:false,
                child: Column(
                  children: [
                    GetCardSetupTile(CustomString.start,CustomString.end),
                    GetCardSetup('₹ 250','₹ 550'),
                  ],
                )),
              SizedBox(height: 10,),

              Text('Documents',style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
              SizedBox(height: 8,),
              Container(
                height: 120,
                child: GetView(),
              )
            ],
          ),
        ),
      ),

    );
  }
}

ListView GetView(){
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (BuildContext context,int index){
        return InkWell(
            onTap: (){
            },
            child:Container(
              height: 100,
              width: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CustomStyle.getImageBanner('assets/shop.png', 100, 100, BoxFit.cover),
                )
              ),
            )
        );
      }
  );
}