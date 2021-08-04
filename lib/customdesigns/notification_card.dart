import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container getmyNotificationCard(String orderstatus, String time, String notification, BuildContext context ) {
  return Container(
    child: Card(
      margin: EdgeInsets.only(top: 3,bottom: 10),
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(10)
          )
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 12 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 6,
                  fit: FlexFit.tight,
                  child: Text('$orderstatus',style: CustomStyle.subTitleBlack ,textAlign: TextAlign.left,),),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: Text('$time',style: CustomStyle.greyText10,textAlign: TextAlign.right,),),
              ],

            ),
            SizedBox(height:10,),
            CustomStyle.GetDivider(),
            SizedBox(height:12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                orderstatus==CustomString.notType_place? CustomStyle.getImageIcons('assets/check_circle.png', 24, CustomColors.colorPrimaryOrange)
                :orderstatus==CustomString.notType_cancel? CustomStyle.getImageIcons('assets/close_circle.png', 24, CustomColors.red)
                :orderstatus==CustomString.notType_tabreq? CustomStyle.getImageIcons('assets/table_req.png', 24, CustomColors.colorPrimaryBlue)
                :orderstatus==CustomString.notType_outfordel? CustomStyle.getImageIcons('assets/transit.png', 24, CustomColors.colorPrimaryOrange)
                :CustomStyle.getImageIcons('assets/check_circle.png', 24, CustomColors.colorPrimaryOrange),

                SizedBox(width: 10,),
                Flexible(
                  flex: 1,
                    fit: FlexFit.tight,
                    child:Text('$notification',style: CustomStyle.subTitleBlack,textAlign: TextAlign.justify,
                      softWrap: true,overflow: TextOverflow.fade,maxLines: 5,),),

              ],
            )

          ],
        ),

      ),














    ),
  );
}

