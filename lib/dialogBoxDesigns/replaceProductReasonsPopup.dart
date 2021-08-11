import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/radioGroupDesign.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReplaceProductReasonsPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 427.0,
        color: Colors.transparent,
        child: new Center(
          child: Column(
            children: [
              //row for text and cross button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 6,
                    fit: FlexFit.tight,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(CustomString.replaceProduct,style: CustomStyle.boldValueText,
                          textAlign: TextAlign.center,)
                      ],
                    ),
                  ),

                  Flexible(
                      flex: 4,
                      fit: FlexFit.loose,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: IconButton(
                              alignment: Alignment.centerRight,
                              icon: CustomStyle.getImageIcons('assets/close.png',10,CustomColors.black),
                              iconSize: 50,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),)
                        ],
                      )),
                ],
              ),
              SizedBox(height: 10,),

              Padding(
                  padding: EdgeInsets.only(left: 16,right: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(CustomString.dmsg_selreason_replace,style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.left,),
                      SizedBox(height: 8,),
                      Text(CustomString.dmsg_selreason_cancel_subtitle,style: CustomStyle.subTitle,textAlign: TextAlign.justify,
                      softWrap: true,maxLines: 2,overflow: TextOverflow.fade,),
                    ],
                  ),
              ),
              SizedBox(height: 16,),

              RadioGroupDesign(verticalGroupValue:CustomString.value_reasons_replaceproduct,status:CustomString.reasons_replaceproduct,direction: Axis.vertical,),
              SizedBox(height: 20,),

              BtnContinue(CustomString.submit, context,'ReplaceProductPopup'),
              SizedBox(height: 20,),

              TextButton(
                onPressed: (){
                  //logic here
                  Navigator.pop(context);
                },
                child: Text(CustomString.cancel,style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.center,),),
              SizedBox(height: 20,),

            ],
          ),
        ));
  }

}