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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child:InkWell(
              onTap: (){
                //go to choose from list screen
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'ChooseListMerch',)));
              },
              child: GetTemplate(CustomString.chooseTemplate,'assets/template.png',context),
            ),),
          SizedBox(width: 16,),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: InkWell(
              onTap: (){
                //write scan barcode logic here
                /*  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'AddNewProd',)));*/
                //if scan fails open popup if scan successful open add new product screen
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
              child:GetTemplate(CustomString.scanBarcode,'assets/scan.png',context),
            ),),
        ],
      ),
    )
  );
}