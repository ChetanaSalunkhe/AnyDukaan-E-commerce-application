import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

Container GetCardSetup(String hint1, String hint2,BuildContext context){
  return Container(
    height: 40,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.zero,
    child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex:5,
              fit: FlexFit.tight,
              child:  Padding(
                padding: EdgeInsets.only(left: 16),
                child: CustomStyle.getEditTextSearch('$hint1',14,1),
              ),),
            CustomStyle.GetDividerVertical(),
            Flexible(
              flex:5,
              fit: FlexFit.tight,
              child:  Padding(
                padding: EdgeInsets.only(left: 16),
                child: CustomStyle.getEditTextSearch('$hint2',14,1),
              ),),
          ],
        )

    ),
  );
}

Row GetCardSetupTile(String title1, String title2){
  return Row(
    children: [
      Flexible(
        flex:1,
        fit: FlexFit.tight,
        child:  Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text('$title1',style: CustomStyle.blackNormalMerch_12,),
        ),),
      Flexible(
        flex:1,
        fit: FlexFit.tight,
        child:  Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text('$title2',style: CustomStyle.blackNormalMerch_12,),
        ),),
    ],
  );
}