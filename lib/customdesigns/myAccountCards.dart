import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

Container getmyAccountCard(IconData i1, String title, IconData i2){
  return Container(
    height:58 ,
    child: Card(
      margin: EdgeInsets.only(top: 3),
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(6)
          )
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(padding: EdgeInsets.only(left:18 ,right:18, top:10, bottom: 10),
            child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(i1, size: 16, color: CustomColors.colorPrimaryBlue,
                  ),

                  SizedBox(width: 13,),

                  Flexible(flex: 9, fit: FlexFit.tight,
                    child: Text('$title',style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.left,),

                  ),

                  Flexible(flex: 1, fit: FlexFit.tight,
                    child:Icon(i2,color: CustomColors.colorPrimaryOrange,size: 16,),
                  ),
                ]
            ) ,

          )



        ],
      ),

    ),
  );
}