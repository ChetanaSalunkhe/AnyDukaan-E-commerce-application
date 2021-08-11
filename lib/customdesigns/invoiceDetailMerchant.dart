import 'package:anydukaan/customdesigns/dashedLine.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

import 'ordersSummaryCard.dart';

Container GetInvoiceDetailCard(List<List<String>> entries, bool isStatusVisible, bool isSuccessCardVisible){
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child:Padding(
          padding: EdgeInsets.only(left: 16,right: 16,bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              /*status*/
              Visibility(
                visible: isStatusVisible,
                  child:Text(entries[index].first, style: CustomStyle.warningText_merch_12),),
              SizedBox(height: 14,),
              /*date*/
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 7,
                      fit: FlexFit.tight,
                      child:Text(entries[index].elementAt(1), style:CustomStyle.blackBoldMerch_12,),),
                  Visibility(
                    visible: isSuccessCardVisible,
                      child:Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(CustomString.succssful, style:CustomStyle.greenText12_merch,),
                            SizedBox(width: 4,),
                            CustomStyle.getIcons(Icons.check_circle, 16, CustomColors.greenlight),
                          ],
                        ),
                      ),),
                ],
              ),
              SizedBox(height: 20,),
              DashedLine(color: CustomColors.greyline,dashWidth:5.0,height:1.5),
              SizedBox(height: 20,),
              /*total sale*/
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 9,
                    fit: FlexFit.tight,
                    child:Text(CustomString.totSale, style:CustomStyle.blackNormalMerch_14,),),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child:Text(entries[index].elementAt(2), style:CustomStyle.blackBoldMerch_16,textAlign: TextAlign.end,),),
                ],
              ),
              SizedBox(height: 20,),
              /*commission per sale*/
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 9,
                    fit: FlexFit.tight,
                    child:Text(CustomString.commPerSale, style:CustomStyle.blackNormalMerch_14,),),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child:Text('X '+entries[index].elementAt(3), style:CustomStyle.blackBoldMerch_16,textAlign: TextAlign.end,),),
                ],
              ),
              SizedBox(height: 20,),
              /*GST tax*/
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 9,
                    fit: FlexFit.tight,
                    child:Text(CustomString.gstTax, style:CustomStyle.blackNormalMerch_14,),),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child:Text(entries[index].elementAt(4), style:CustomStyle.blackBoldMerch_16,textAlign: TextAlign.end,),),
                ],
              ),
              SizedBox(height: 20,),
              DashedLine(color: CustomColors.greyline,dashWidth:5.0,height:1.5),
              SizedBox(height: 20,),
              /*total payable*/
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 8,
                    fit: FlexFit.tight,
                    child:Text(CustomString.totAmt, style:CustomStyle.blackBoldMerch_16,),),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child:Text(entries[index].elementAt(5), style:CustomStyle.blackBoldMerch_16,textAlign: TextAlign.end,),),
                ],
              ),
            ],
          ),
        )
    ),
  );
}