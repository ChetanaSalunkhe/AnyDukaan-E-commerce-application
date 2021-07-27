import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/cardTemplateSetup.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:flutter/material.dart';

Container GetPopup(BuildContext context){
  return Container(
    //height: MediaQuery.of(context).size.height,
    color: Colors.transparent,
    child: Padding(
      padding: EdgeInsets.only(left: 55,right: 55,bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            onTap: (){
              //go to list of products
            },
            child: GetTemplate(CustomString.chooseTemplate,'assets/template.png'),
          ),
          SizedBox(width: 16,),
          InkWell(
            onTap: (){
              //write scan barcode logic here
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(14),
                        topLeft: Radius.circular(14)),),
                  builder: (context) => ModalBottomSheetDialog(popupStyle:'ScanProdPopup'));
            },
            child:GetTemplate(CustomString.scanBarcode,'assets/scan.png'),
          ),
        ],
      ),
    )
  );
}