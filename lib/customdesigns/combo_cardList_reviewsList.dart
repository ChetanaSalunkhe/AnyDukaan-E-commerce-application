import 'package:anydukaan/customdesigns/reviewsListDesign.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/valueresources/dimens.dart';
import 'package:flutter/material.dart';

import 'cardWithButtonsListDesign.dart';

class ComboCardListReviewsList extends State{
  List<String> entries;
  ComboCardListReviewsList({Key key,this.entries});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: CustomDimens.cardheight_242,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: CustomListView(entries:entries),
              )
          ),
          SizedBox(height: 30,),
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14)
              ),
              child: SingleChildScrollView(
                child:  Container(
                    margin: EdgeInsets.zero,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(left: 16,right: 16,top: 20),
                    decoration: CustomStyle.getBoxShadow(),
                    child:Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(CustomString.shopReviews,style: CustomStyle.blackBold16,),
                          ],
                        ),
                        Expanded(
                          child: ReviewListView(entries: entries,),
                        )
                      ],
                    )
                ),
              )
          ),
        ],
      ),
    );
  }

}

class CustomListView extends StatefulWidget{
  List<String> entries;
  CustomListView({Key key,this.entries}):super(key: key);

  @override
  State<StatefulWidget> createState() {

    return ListViewUI_cardWithbtns(entries:entries);
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