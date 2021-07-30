import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

InkWell GetCardDesign(BuildContext context,String imgName, String title,String key_){
  return InkWell(
    onTap: (){
      print(title);
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=> SecondRoute(callFrom:
          key_=='Offers'?'ApplyOffrDtlsMerch':'Promotions',params: title,)));
    },
    child: Container(
      height: 170,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                ),
                child:  Container(
                  //color: CustomColors.greyline,
                  child:CustomStyle.getImageBanner('$imgName', MediaQuery.of(context).size.width, 128, BoxFit.cover),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16,top: 5,bottom: 5),
                child: Text('$title',style: CustomStyle.blackBoldMerch_16,textAlign: TextAlign.start,),),

            ],
          )
      ),
    ),
  );

}