import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/orderCardTemplate.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:flutter/material.dart';

List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary"];

class ReturnProduct extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_all,
      appBar: CustomAppBarWithoutSearch('Return Product',true,true,'','assets/chat_bubble.png'),
      body:Container(
        child: ReturnProduct_(),
      ),
      bottomSheet:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              /*open popup of reasons cancel order*/
              Navigator.pop(context);
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(14),
                        topLeft: Radius.circular(14)),),
                  builder: (context) => ModalBottomSheetDialog(popupStyle:'ReturnProductReasons'));
            },
            child:BtnContinue('Return Product', context,'ReturnProduct'),
          ),
        ],
      )
    );
  }
}

class ReturnProduct_ extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return OrdCardTemplate(entries: entries,checkBoxval: true,);
  }

}