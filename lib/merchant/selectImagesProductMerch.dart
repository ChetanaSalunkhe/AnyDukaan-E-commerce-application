import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/imagesGridMerchant.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/valueresources/dimens.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary"];

class SelectProductImagesMerchant extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch('Edit Product',true,true,'assets/upload.png','assets/delete.png',),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*gridview of images*/
              Container(
                height: MediaQuery.of(context).size.height,
                //gridview of segment list
                child: CustomGridView(),

              ),
            ],
          ),
        ),
      ),
      bottomSheet:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              //send/update images to server
            },
            child: BtnContinue(CustomString.saveChanges, context, 'ImagesList'),
          ),
        ],
      )

    );
  }
}