import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/merchAppBarWithSearch.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class AddNewProductMerchant extends State{

  String dropdownValue = 'One';
  List <String> spinnerItems = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five'
  ] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch('Add New Product',true,false,'assets/help.png','assets/notification_merch.png',),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*upload image or get scanned image here*/
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 282,
                  decoration: CustomStyle.getBoxShadow_gradient(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomStyle.getIcons(Icons.image_outlined, 70, CustomColors.colorPrimaryBlue),
                      Text('Tap to upload image',style: CustomStyle.blue_merch_bold_12,textAlign: TextAlign.center,),
                    ],
                  )
              ),

              Container(
                margin: EdgeInsets.only(top: 10,bottom: 20),
                child: Column(
                  children: [
                    /*product name*/
                    CustomStyle.getEditTextEnterDetails('Product Name', 16, 2, TextInputType.text,CustomStyle.blackBoldMerch_16),
                    /*select category*/
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 24,
                      elevation: 16,
                      isExpanded: true,
                      hint: Text('Select Category',style: CustomStyle.blackNormalMerch_12,),
                      style: CustomStyle.blackNormalMerch_16,
                      underline: Container(
                        height: 1,
                        color: CustomColors.greydark,
                      ),
                      onChanged: (String data) {
                        setState(() {
                          dropdownValue = data;
                        });
                      },
                      items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    /*select sub category*/
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 24,
                      elevation: 16,
                      isExpanded: true,
                      hint: Text('Select Category',style: CustomStyle.blackNormalMerch_12,),
                      style: CustomStyle.blackNormalMerch_16,
                      underline: Container(
                        height: 1,
                        color: CustomColors.greydark,
                      ),
                      onChanged: (String data) {
                        setState(() {
                          dropdownValue = data;
                        });
                      },
                      items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    /*MRP, selling rate*/
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex:1,
                          fit: FlexFit.tight,
                          child:Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: CustomStyle.getEditTextEnterDetails('MRP', 16, 1, TextInputType.text,CustomStyle.blackBoldMerch_16),
                          ),
                        ),
                        Flexible(
                          flex:1,
                          fit: FlexFit.tight,
                          child:Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: CustomStyle.getEditTextEnterDetails('Selling Rate', 16, 1, TextInputType.text,CustomStyle.blackBoldMerch_16),
                          ),
                        ),
                      ],
                    ),
                    /*manufacturing date*/
                    CustomStyle.getEditTextWithIcon('Manufacturing Date', 16, 1, TextInputType.text,
                        Icons.calendar_today, CustomColors.colorPrimaryBlue, 16, '',CustomColors.colorPrimaryBlue),
                    /*add description*/
                    CustomStyle.getEditTextEnterDetails('Add Description', 16, 5, TextInputType.text,CustomStyle.blackBoldMerch_16),
                    /*product weight*/
                    CustomStyle.getEditTextEnterDetails('Product Weight', 16, 1, TextInputType.text,CustomStyle.blackBoldMerch_16),
                    SizedBox(height: 30,),
                    /*button*/
                    InkWell(
                      onTap: (){
                        //btn click logic here
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'EditProd',)));
                      },
                      child: BtnContinue(CustomString.reqToAdd, context, 'AddNewProdBtn'),
                    ),
                    SizedBox(height: 20,),
                    TextButton(
                        onPressed: (){

                        },
                        child: Text(CustomString.appOffers,style: CustomStyle.blackBoldMerch_16,))

                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}