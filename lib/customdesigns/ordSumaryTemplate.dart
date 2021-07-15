import 'package:anydukaan/valueresources/customColors.dart';
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
                  child: Text('Selling Price',style: CustomStyle.subTitle,textAlign: TextAlign.start,)),
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
                  child: Text('Product Offer',style: CustomStyle.subTitle,textAlign: TextAlign.start,)),
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
                  child: Text('Delivery Charges',style: CustomStyle.subTitle,textAlign: TextAlign.start,)),
              Flexible(
                  flex:2,
                  fit: FlexFit.tight,
                  child: Text('+ ₹ 10',style: CustomStyle.subTitle,textAlign: TextAlign.end,)),
            ],
          ),
          SizedBox(height: 14,),
          Divider(
            height: 1,
            color: CustomColors.greyline,
          ),
          SizedBox(height: 14,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  flex:8,
                  fit: FlexFit.tight,
                  child: Text('Sub Total',style: CustomStyle.subTitle,textAlign: TextAlign.start,)),
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
                  child: Text('Return Product',style: CustomStyle.subTitle,textAlign: TextAlign.start,)),
              Flexible(
                  flex:2,
                  fit: FlexFit.tight,
                  child: Text('- ₹ 87',style: CustomStyle.subTitle,textAlign: TextAlign.end,)),
            ],
          ),
          SizedBox(height: 14,),
          Divider(
            height: 1,
            color: CustomColors.greyline,
          ),
          SizedBox(height: 14,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  flex:8,
                  fit: FlexFit.tight,
                  child: Text('Final Cost',style: CustomStyle.blackBold16,textAlign: TextAlign.start,)),
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