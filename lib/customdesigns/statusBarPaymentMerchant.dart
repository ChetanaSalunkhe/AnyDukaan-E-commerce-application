import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

Container GetStatusBarMerchant(){
  return Container(
      height: 70,
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex:1,
                fit: FlexFit.tight,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(CustomString.cod,style: CustomStyle.blackNormalMerch_12,),
                    Text('₹ 12,880',style: CustomStyle.blackBoldMerch_16,),
                  ],
                ),),
              Flexible(
                flex:1,
                fit: FlexFit.tight,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(CustomString.upi,style: CustomStyle.blackNormalMerch_12,),
                    Text('₹ 21,180',style: CustomStyle.blackBoldMerch_16,),
                  ],
                ),),
              Flexible(
                flex:1,
                fit: FlexFit.tight,
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(CustomString.khata,style: CustomStyle.blackNormalMerch_12,),
                    Text('₹ 42,280',style: CustomStyle.blackBoldMerch_16,),
                  ],
                ),),
            ],
          ),
          SizedBox(height: 12,),
          StepProgressIndicator(
            totalSteps: 3,
            size: 15,
            padding: 0,
            selectedColor: Colors.yellow,
            unselectedColor: Colors.cyan,
            customStep: (index, color, size){
              return index==0?Flexible(
                  flex: 3,
                  fit: FlexFit.loose,
                  child: Container(
                    color: CustomColors.green_merch_bar,
                    height: 8,
                  )):index==1?Flexible(
                  flex: 2,
                  fit: FlexFit.loose,
                  child: Container(
                    color: CustomColors.colorPrimaryBlue,
                    height: 8,
                  )):Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Container(
                    color: CustomColors.colorPrimaryOrange,
                    height: 8,
                  ));
            },
            roundedEdges: Radius.circular(10),
          ),
        ],
      )
  );
}