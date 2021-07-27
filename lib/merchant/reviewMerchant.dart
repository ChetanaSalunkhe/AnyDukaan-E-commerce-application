import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/reviewsListDesign.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables"];

class ReviewMerchant extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch('Reviews',true,true,'assets/help.png','assets/notification_merch.png',),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('3.2',style: CustomStyle.blackNormalMerch_24,),
                    SizedBox(width: 8,),
                    CustomStyle.getIcons(Icons.star, 24, CustomColors.colorPrimaryOrange),
                    SizedBox(width: 16,),
                    Text('12 Reviews',style: CustomStyle.blackBoldMerch_12,),
                  ],
                ),
                ReviewListView(entries:entries),
              ],
            ),
        ),
      ),
    );
  }
}

class ReviewListView extends StatefulWidget{
  List<String> entries;
  ReviewListView({Key key,this.entries}):super(key: key);

  @override
  State<StatefulWidget> createState() {

    return ReviewsListDesign(entries:entries);
  }
}