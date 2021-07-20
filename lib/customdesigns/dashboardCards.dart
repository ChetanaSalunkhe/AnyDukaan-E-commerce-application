import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DurationState {
  const DurationState({this.progress, this.buffered, this.total});
  final Duration progress;
  final Duration buffered;
  final Duration total;
}

Container GetCardMerch(String status, Color indicatorColor,double value, String amt,
    bool isIndicatorVisible,bool isTextVisible,String amt2,var style){
  return Container(
    width: 102,
    height: 110,
    color: Colors.transparent,
    child:Card(
      elevation: 5,
     shadowColor: CustomColors.blueborder,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.all(Radius.circular(20))
     ),
      child: Padding(
        padding: EdgeInsets.all(7),
        child: Column(
          children: [
            Text('$status',style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.center,),
            SizedBox(height: 10,),
            Visibility(
              visible: isIndicatorVisible,
              child:Column(
                children: [
                  LinearPercentIndicator(
                    width: 77.0,
                    lineHeight: 8.0,
                    percent: value,
                    backgroundColor: CustomColors.colorgrey_f4,
                    progressColor: indicatorColor,
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Flexible(
                        flex: 7,
                        fit: FlexFit.tight,
                        child: Text('12',style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.start,),),
                      Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Text('120',style: CustomStyle.subTitle_merch,textAlign: TextAlign.end,),),
                    ],
                  ),
                ],
              )
            ),
            Visibility(
                visible:isTextVisible,
                child: Text('$amt2',style: CustomStyle.orange_merch_24,textAlign: TextAlign.center,),),
            SizedBox(height: 10,),
            Divider(
              height: 1,
              color: CustomColors.grey_subtitle,
            ),
            SizedBox(height: 10,),
            Text('$amt',style: style,textAlign: TextAlign.center,),
          ],
        ),
      )
    ),
  );
}