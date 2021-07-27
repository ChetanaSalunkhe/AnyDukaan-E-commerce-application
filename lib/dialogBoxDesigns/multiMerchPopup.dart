import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class MultiMechPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 300.0,
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
                    flex: 7,
                    fit: FlexFit.tight,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(CustomString.multMerch,style: CustomStyle.boldValueText,
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
              SizedBox(height: 30,),

              Padding(
                padding:EdgeInsets.only(left:16,right:16),
                child: Text(CustomString.dmsg1,style: CustomStyle.blackNormalCust_14,
                  textAlign: TextAlign.center,),
              ),
              SizedBox(height: 30,),

              //raisedbutton
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      isDismissible: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14),
                            topLeft: Radius.circular(14)),),
                      builder: (context) => ModalBottomSheetDialog(popupStyle:'Login'));
                },
                child: BtnContinue(CustomString.continue_,context,'MultiMerchPopup'),
              ),

              SizedBox(height: 30,),

              //textbutton
              TextButton(
                onPressed: (){
                  //logic here
                  Navigator.pop(context);
                },
                child: Text(CustomString.cancel,style: CustomStyle.boldValueText,textAlign: TextAlign.right,),)
            ],
          ),
        ));
  }

}