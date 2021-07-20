import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/radioGroupDesign.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvailableQtyPopup extends State{
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 400.0,
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
                        Text(CustomString.avalQty,style: CustomStyle.boldValueText,
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
              SizedBox(height: 10,),

              Padding(
                padding:EdgeInsets.only(left:16,right:16),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //image and text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height:70,
                            width:80,
                            child: Card(
                              color:CustomColors.background_lightblue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: CustomStyle.getImageBanner('assets/milkshake.png', 70, 70,BoxFit.cover),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 16,top: 16),
                          child: Text('Keshar Pista MilkShake',style: CustomStyle.blackBoldlCust_14,
                            softWrap: true,overflow: TextOverflow.fade,maxLines: 2,),)
                        ],
                      ),
                      //options
                      SizedBox(height: 20,),
                      RadioGroupDesign(verticalGroupValue:CustomString.groupValQty,status:CustomString.status_qty,direction: Axis.vertical,),

                    ],
                  ),
                )
              ),
              SizedBox(height: 70,),

              //raisedbutton
              InkWell(
                onTap: (){
                 // Navigator.pop(context);
                  //add to cart logic here
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      isDismissible: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14),
                            topLeft: Radius.circular(14)),),
                      builder: (context) => ModalBottomSheetDialog(popupStyle:'TableReserveSuccessPopup'));
                },
                child: BtnContinue(CustomString.addToCart,context,'AvalQtyPopup'),
              ),
            ],
          ),
        ));
  }

}