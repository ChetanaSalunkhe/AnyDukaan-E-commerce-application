import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:timeline_list2/timeline.dart';
import 'package:timeline_list2/timeline_model.dart';

class DeliveryTimeline extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Timeline(
        children: <TimelineModel>[
          TimelineModel(
            Container(
                padding: EdgeInsets.all(0),
                child: Padding(
                  padding: EdgeInsets.only(left: 0,top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(CustomString.ordred,style: CustomStyle.blackNormalCust_14,),
                      Text("Rajesh Kirana Store, Apr 1, 5:30 PM",style: CustomStyle.greyText10,),
                    ],
                  )
                )
            ),
            icon: Icon(Icons.check_circle, color: CustomColors.greenlight,size: 16,),
            iconBackground: Colors.transparent,
          ),
          TimelineModel(
            Container(
                padding: EdgeInsets.all(0),
                child: Padding(
                  padding: EdgeInsets.only(left: 0,top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(CustomString.delvrd,style: CustomStyle.subTitle,),
                      Text("Home - B-1204, Sun City, Goregoan Paid - UPI ",style: CustomStyle.greyText10,),
                    ],
                  )
                )
            ),
            icon: Icon(Icons.delivery_dining,color: CustomColors.grey_subtitle,size: 16,),
            iconBackground: Colors.transparent,
          ),
          TimelineModel(
            Container(
                padding: EdgeInsets.all(0),
                child: Padding(
                  padding: EdgeInsets.only(left: 0,top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(CustomString.return_,style: CustomStyle.subTitle,),
                      Text("Home - B-1204, Sun City, Goregoan Paid - UPI ",style: CustomStyle.greyText10,),
                    ],
                  )
                )
            ),
            icon: Icon(Icons.assignment_return_outlined,color: CustomColors.grey_subtitle,size: 16,),
            iconBackground: Colors.transparent,
          ),
          TimelineModel(
            Container(
                padding: EdgeInsets.all(0),
                child: Padding(
                  padding: EdgeInsets.only(left: 0,top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(CustomString.refund_,style: CustomStyle.subTitle,),
                      Text("UPI",style: CustomStyle.greyText10,),
                    ],
                  )
                )
            ),
            icon: Icon(Icons.assignment_return,color: CustomColors.grey_subtitle,size: 16,),
            iconBackground: Colors.transparent,
          ),
        ],
        position: TimelinePosition.Left,
         iconSize: 25,
        lineColor: CustomColors.greenlight,
        shrinkWrap: true,
      ),
    );
  }
}
