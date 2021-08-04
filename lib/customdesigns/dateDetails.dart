import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container getmyDateDetails(datetitle, date) {
  return Container(
      height: 48,
      child: Card(
        margin: EdgeInsets.only(top: 3),
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(6)
            )
        ),
         child: Padding(
            padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 8,
                    fit: FlexFit.tight,
                    child: (
                        Text('$datetitle',style: CustomStyle.subTitleBlack,textAlign: TextAlign.left,)
                    ),
                  ),

                  Flexible(
                    flex:2,
                    fit: FlexFit.tight,
                    child: (
                        Text('$date',style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.end,)
                    ),
                  ),

                ],
              ),
         ),

      )
  );
}