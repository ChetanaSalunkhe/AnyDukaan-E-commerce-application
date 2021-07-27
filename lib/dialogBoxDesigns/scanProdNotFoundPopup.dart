import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/customdesigns/warninTemplate.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class ProductNotPresentPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 455.0,
        color: Colors.transparent,
        child: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //row for text and cross button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 7,
                    fit: FlexFit.tight,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(CustomString.prodNotFound,style: CustomStyle.boldValueText,
                          textAlign: TextAlign.center,)
                      ],
                    ),
                  ),

                  Flexible(
                      flex: 3,
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
              SizedBox(height: 34,),

              CustomStyle.getLogoImages('assets/ordcancel_sorry.png', 187, 139),

              Container(
                margin: EdgeInsets.only(left: 16,right: 16,top: 26),
                child: GetWarningTemplate(CustomString.sorryprodNotexist,3),
              ),
              SizedBox(height: 24,),

              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'AddNewProd',)));
                },
                child: BtnContinue(CustomString.createNew, context, 'ProdNotFoundPopup')
              ),
              SizedBox(height: 16,),
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text(CustomString.cancel,style: CustomStyle.blackBoldMerch_16,))



            ],
          ),
        ));
  }

}