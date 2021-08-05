import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/cardSetupMerch.dart';
import 'package:anydukaan/customdesigns/cardTemplateSetup.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/customdesigns/tablebookingSetupCard.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:checkbox_formfield/checkbox_list_tile_formfield.dart';
import 'package:flutter/material.dart';
import 'package:progress_timeline/progress_timeline.dart';

bool isRestaurant_visibleScan=true;/*if restaurant case then set it false otherwise set it true*/

class ProductSetup extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return ProductSetup_();
  }

}

class ProductSetup_ extends State{

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18,),
          /*table booking setup card*/
          GetTableBookingSetupCard(context),
          Transform(
            transform: Matrix4.translationValues(10, 0, 0.0),
            child:Text(CustomString.setProd,style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                  fit: FlexFit.tight,
                  child: Visibility(
                      visible: isRestaurant_visibleScan,
                      child:InkWell(
                        onTap: (){
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              isDismissible: true,
                              enableDrag: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(14),
                                    topLeft: Radius.circular(14)),),
                              builder: (context) => ModalBottomSheetDialog(popupStyle:'ScanProdPopup'));
                        },
                        child: GetTemplate(CustomString.scanBarcode,'assets/scan.png',context),
                      )
                  ),),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child:InkWell(
                  onTap: (){
                    //go to choose from list screen
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'ChooseListMerch',)));
                  },
                  child:GetTemplate(CustomString.chooseTemplate,'assets/template.png',context),
                ),),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child:InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'AddNewProd',)));
                  },
                  child:GetTemplate(CustomString.createNew,'assets/createnew.png',context),
                ),),
            ],
          ),
          SizedBox(height: 50,),
        ],
      )
    );
  }
}
