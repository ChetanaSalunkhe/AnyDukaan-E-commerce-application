import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'customButtons.dart';

class ReviewsListDesign extends State{
  List<String> entries;
  ReviewsListDesign({Key key,this.entries});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 20),
                      height: 147,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ReviewBorder(entries[index].substring(0,1),context,44,44,CustomColors.blueboxshade,CustomStyle.blueboldTitleText,false),
                              SizedBox(width: 10,),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Venkatesh Shantanu',style: CustomStyle.blackNormalCust_14,),
                                  SizedBox(height: 4,),
                                  Text('Goregaon(E)',style: CustomStyle.subTitle,),
                                ],
                              ),),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                    Text('2.1',style: CustomStyle.primaryBtnTextOrange_12,),
                                    SizedBox(width: 6,),
                                    CustomStyle.GetRatingBar(3,Icons.star,CustomColors.colorPrimaryOrange,12),
                                    ],
                                  ),
                                  SizedBox(height: 4,),
                                  Text('22.03.2021',style: CustomStyle.subTitle,),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Flexible(
                                flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8,right: 8),
                                    child: Text(CustomString.dmsg3,style: CustomStyle.subTitle,
                                      textAlign: TextAlign.justify,
                                      maxLines: 6,
                                      softWrap: true,
                                      overflow: TextOverflow.fade,),)),
                          SizedBox(height: 10,)
                        ],
                      ),
                  ),
                ],
              )
          );
        }
    );
  }

}