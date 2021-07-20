import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

/*expandable list of merchants and products*/
Widget MerchantList() {
  return Card(
    child: ExpansionTile(
      leading:Transform(
        transform: Matrix4.translationValues(-16, -10, 0.0),
        child:  Radio(
          value: true,
          groupValue: false,
          hoverColor: CustomColors.colorPrimaryBlue,
          activeColor: CustomColors.colorPrimaryBlue,
          focusColor: CustomColors.colorPrimaryBlue,
        ),
      ),
      title: Transform(
        transform: Matrix4.translationValues(-32, -5, 0.0),
        child: Text('Ramchandra Fruits and Vegetables market shop',style: CustomStyle.blackBoldlCust_14,
          softWrap: true,overflow: TextOverflow.ellipsis,),
      ),
      subtitle: Transform(
        transform: Matrix4.translationValues(-32, -5, 0.0),
        child: Text('Groceries', style: CustomStyle.subTitle),
      ),
      trailing:  Transform(
        transform: Matrix4.translationValues(0.0, -10, 0.0),
        child: Text('₹ 22', style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.start,),
      ),
      children: <Widget>[
        Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,   //pass products length here
                itemBuilder: (BuildContext context,int i){
                  return ListTile(
                    title: Transform(
                      transform: Matrix4.translationValues(0, -15, 0.0),
                      child: Text('Govardhan Milk',style: CustomStyle.blackBoldlCust_14,
                        softWrap: true,overflow: TextOverflow.ellipsis,),
                    ),
                    subtitle: Transform(
                        transform: Matrix4.translationValues(0, -15, 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('₹ 27', style: CustomStyle.subTitleBlack),
                            Transform(
                                transform: Matrix4.translationValues(0, 5, 0),
                                child: Divider(
                                  height: 1,
                                  color: CustomColors.greyline,
                                )
                            )
                          ],
                        )
                    ),
                    /*trailing:  Container(
            child: Transform(
              transform: Matrix4.translationValues(0.0, -10, 0.0),
              child: BtnPlusMinus(),
            ),
          )*/
                  );
                }),
            Container(
              margin: EdgeInsets.only(left: 16,right: 16,bottom: 16),
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
                          child: Text('- ₹ 162',style: CustomStyle.subTitle,textAlign: TextAlign.end,)),
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
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                          flex:8,
                          fit: FlexFit.tight,
                          child: Text('Packaging',style: CustomStyle.subTitle,textAlign: TextAlign.start,)),
                      Flexible(
                          flex:2,
                          fit: FlexFit.tight,
                          child: Text('+ ₹ 10',style: CustomStyle.subTitle,textAlign: TextAlign.end,)),
                    ],
                  ),
                  SizedBox(height: 10,),
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
                          child: Text('Sub Total',style: CustomStyle.blackBold16,textAlign: TextAlign.start,)),
                      Flexible(
                          flex:2,
                          fit: FlexFit.tight,
                          child: Text('₹ 22',style: CustomStyle.blackBold16,textAlign: TextAlign.end,)),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}