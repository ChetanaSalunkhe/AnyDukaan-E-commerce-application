import 'package:anydukaan/customdesigns/expanded_categoryList.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar2.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Restaurant","Grocery","Vegetables"];

class ChooseFromListMerchant extends State {

  @override
  Widget build(BuildContext context) {
    return ChooseFromListMerchant_();
  }
}

class ChooseFromListMerchant_ extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithSearch(title:"Choose from our List",searchHint:'Search products...',isLeadingVisible:true,
        isActionVisible:false,img: 'assets/audio_search.png',),
      body: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        scrollDirection: Axis.vertical,
        child:Column(
          children: [
            Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.only(top: 16,left: 16,right: 16),
                      child:ExpandedList(entries: entries,),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedList extends StatelessWidget{
  List<String> entries;
  ExpandedList({Key key,this.entries}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: entries.length,    //pass merchants list length here
      itemBuilder: (BuildContext context, int i){
        return Categoryist();
      },
    );
  }
}