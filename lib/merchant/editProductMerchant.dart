import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/customPageIndicator.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<List<String>> entries_banners = [
  ["assets/dummy_prod.png",],
  ["assets/dummy_prod.png",],
  ["assets/dummy_prod.png",],
];

class EditProductMerchant extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch('Edit Product',true,false,'assets/help.png','assets/notification_merch.png',),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*upload image or get scanned image here*/
              Container(
                  height: 245,
                  decoration: CustomStyle.getBoxShadow_gradient(),
                  padding: EdgeInsets.only(top: 16),
                  child:Stack(
                    children: [
                      AdvPages(iName:'assets/dummy_prod.png',width:360,height:190,boxHeight: 190,entries:entries_banners),
                      Positioned.fill(
                        top: 170,
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: (){
                                    //open images list here
                                    Navigator.push(context, 
                                    MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'ChangeImageMerch',)));
                                  },
                                  child: Text(CustomString.changeImage,style: CustomStyle.blue_merch_bold_12,textAlign: TextAlign.right,))
                            ],
                          ),
                      ),

                    ],
                  )
              ),

              Container(
                margin: EdgeInsets.only(left:16,right:16,top: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /*product name*/
                    Text('Ashirvad Ata 5 kg',style:CustomStyle.blackBoldMerch_16,textAlign: TextAlign.start,),
                    SizedBox(height: 16,),
                    /*applied offers*/
                    Container(
                        child:Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                            ),
                            child:Padding(
                              padding: EdgeInsets.all(14),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 9,
                                          fit: FlexFit.tight,
                                          child: Text('Applied Offer',style: CustomStyle.blackBoldMerch_16,)),
                                      Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: CustomStyle.getIcons(Icons.edit, 16, CustomColors.colorPrimaryOrange)),
                                    ],
                                  ),
                                  SizedBox(height: 26,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                          flex: 5,
                                          fit: FlexFit.tight,
                                          child:Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Offer Type',style: CustomStyle.blackBoldMerch_12,),
                                              SizedBox(height: 8,),
                                              Text('Amount',style: CustomStyle.blackNormalMerch_12,),
                                            ],
                                          )
                                      ),
                                      Flexible(
                                          flex: 5,
                                          fit: FlexFit.tight,
                                          child:Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Offer Cost',style: CustomStyle.blackBoldMerch_12,),
                                              SizedBox(height: 8,),
                                              Text('- ₹ 5',style: CustomStyle.blackNormalMerch_12,),
                                            ],
                                          )
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 26,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child:Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Offer Duration',style: CustomStyle.blackBoldMerch_12,),
                                              CustomStyle.getEditTextWithIcon('Date', 14, 1,TextInputType.text, Icons.calendar_today,
                                                  CustomColors.colorPrimaryBlue,16,'',CustomColors.colorPrimaryBlue,true),
                                            ],
                                          )
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 26,),
                                  BtnWithArrow('End Offer', context, MediaQuery.of(context).size.width, 45,false,CustomStyle.orangeOutline,CustomStyle.textOrange16,
                                  CustomColors.colorPrimaryOrange,Icons.keyboard_arrow_down),
                                ],
                              )
                            )
                        )
                    ),
                    SizedBox(height: 16,),
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
                            child: CustomStyle.getEditTextEnterDetails('MRP', 14, 1, TextInputType.text,CustomStyle.blackBoldMerch_16),
                          ),
                        ),
                        Flexible(
                          flex:1,
                          fit: FlexFit.tight,
                          child:Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: CustomStyle.getEditTextEnterDetails('Selling Rate', 14, 1, TextInputType.text,CustomStyle.blackBoldMerch_16),
                          ),
                        ),
                      ],
                    ),
                    /*product weight*/
                    CustomStyle.getEditTextEnterDetails('Product Weight', 14, 1, TextInputType.text,CustomStyle.blackBoldMerch_16),
                    /*manufacturing date*/
                    CustomStyle.getEditTextWithIcon('Manufacturing Date', 14, 1, TextInputType.text, Icons.calendar_today,
                        CustomColors.colorPrimaryBlue, 16, '',CustomColors.colorPrimaryBlue,true),
                    SizedBox(height: 20,),
                    /*description*/
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Description',style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.start,),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Container(
                      child:Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          side: CustomStyle.greyOutline,
                        ),
                        child:Padding(
                          padding: EdgeInsets.all(14),
                          child: Text(CustomString.dummyDesc,style: CustomStyle.blackNormalMerch_12,maxLines: 10,textAlign: TextAlign.justify,
                            softWrap: true,overflow: TextOverflow.fade,),
                        )
                      )
                    ),
                    SizedBox(height: 30,),
                    /*button*/
                    InkWell(
                      onTap: (){
                        //btn click logic here
                      },
                      child: BtnContinue(CustomString.saveChanges, context, 'EditProdBtn'),
                    ),
                    SizedBox(height: 20,),

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