import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

Container AddressCard(String addrType){
  return Container(
    height: 110,
   // width: MediaQuery.of(context).size.width,
    child: Card(
      margin: EdgeInsets.only(top: 22),
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(10)
          )
      ),


      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //row
          Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 15),
            child:Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomStyle.getIcons(addrType=='Home'?Icons.home_outlined:addrType=='Work'?Icons.work_outline:Icons.add_location,
                      16, CustomColors.colorPrimaryBlue),
                  SizedBox(width: 13,),
                  Flexible(
                    flex: 9,
                    fit: FlexFit.tight,
                    child: Text(addrType, style: CustomStyle.blackBoldlCust_12,textAlign:TextAlign.left,),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child:Icon(Icons.edit,color: CustomColors.colorPrimaryOrange,size: 14,),
                  ),
                ]
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 15, right: 15, top: 12 ),
            child: Text(CustomString.homeadr,style: CustomStyle.subTitle,
              maxLines: 5,softWrap: true,
              overflow: TextOverflow.fade, textAlign: TextAlign.justify,),
          ),
        ],
      ),

    ),
  );
}