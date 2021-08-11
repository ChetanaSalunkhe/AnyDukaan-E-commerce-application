import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class OrdSummaryTemplate extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.white,
    //  margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: EdgeInsets.only(left: 16,right: 16),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  flex:8,
                  fit: FlexFit.tight,
                  child: Text(CustomString.sprice,style: CustomStyle.subTitle,textAlign: TextAlign.start,)),
              Flexible(
                  flex:2,
                  fit: FlexFit.tight,
                  child: Text('₹ 162',style: CustomStyle.subTitle,textAlign: TextAlign.end,)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  flex:8,
                  fit: FlexFit.tight,
                  child: Text(CustomString.prodOffer,style: CustomStyle.subTitle,textAlign: TextAlign.start,)),
              Flexible(
                  flex:2,
                  fit: FlexFit.tight,
                  child: Text('- ₹ 20',style: CustomStyle.subTitle,textAlign: TextAlign.end,)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  flex:8,
                  fit: FlexFit.tight,
                  child: Text(CustomString.delcharges,style: CustomStyle.subTitle,textAlign: TextAlign.start,)),
              Flexible(
                  flex:2,
                  fit: FlexFit.tight,
                  child: Text('+ ₹ 10',style: CustomStyle.subTitle,textAlign: TextAlign.end,)),
            ],
          ),
          SizedBox(height: 14,),
          CustomStyle.GetDivider(),
          SizedBox(height: 14,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  flex:8,
                  fit: FlexFit.tight,
                  child: Text(CustomString.subtot,style: CustomStyle.subTitle,textAlign: TextAlign.start,)),
              Flexible(
                  flex:2,
                  fit: FlexFit.tight,
                  child: Text('₹ 152',style: CustomStyle.subTitle,textAlign: TextAlign.end,)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  flex:8,
                  fit: FlexFit.tight,
                  child: Text(CustomString.returnProduct,style: CustomStyle.subTitle,textAlign: TextAlign.start,)),
              Flexible(
                  flex:2,
                  fit: FlexFit.tight,
                  child: Text('- ₹ 87',style: CustomStyle.subTitle,textAlign: TextAlign.end,)),
            ],
          ),
          SizedBox(height: 14,),
          CustomStyle.GetDivider(),
          SizedBox(height: 14,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  flex:8,
                  fit: FlexFit.tight,
                  child: Text(CustomString.finalCost,style: CustomStyle.blackBold16,textAlign: TextAlign.start,)),
              Flexible(
                  flex:2,
                  fit: FlexFit.tight,
                  child: Text('₹ 65',style: CustomStyle.blackBold16,textAlign: TextAlign.end,)),
            ],
          ),
          SizedBox(height: 14,),
        ],
      ),
      )
    );
  }

}