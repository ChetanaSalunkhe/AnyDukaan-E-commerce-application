import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/customPageIndicator.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<List<String>> entries_banners = [
  ["assets/hotel_img.png",],
  ["assets/hotel_img.png",],
  ["assets/hotel_img.png",],
];

class BookTable extends State{

  @override
  Widget build(BuildContext context) {
    String title = CustomString.title_shops_near;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBarWithoutSearch('Hotel Chetana',true,false,'assets/serch.png','assets/module_info.png'),
        body: SingleChildScrollView(
          clipBehavior: Clip.antiAlias,
          child: Container(
            child: Column(
              children: [
                //banner image
                Container(
                  color: CustomColors.background_lightblue,
                  margin: EdgeInsets.zero,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //SizedBox(height: 32,),
                      AdvPages(iName:'assets/hotel_img.png',width:360,height:212,boxHeight: 212,entries: entries_banners,),
                    ],
                  ),
                ),

                //row date time
                Container(
                  margin: EdgeInsets.only(left: 16,right: 16,top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex:1,
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 24),
                            child: CustomStyle.getEditTextWithIcon('Date', 14, 1,TextInputType.text,
                                Icons.calendar_today,CustomColors.colorPrimaryBlue,16,'',CustomColors.black,true),
                          )
                      ),
                      Flexible(
                          flex:1,
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: EdgeInsets.only(left: 24),
                            child: CustomStyle.getEditTextWithIcon('Schedule Time', 14, 1,TextInputType.text,
                                Icons.keyboard_arrow_down,CustomColors.colorPrimaryBlue,20,'',CustomColors.black,true))
                      ),
                    ],
                  ),
                ),

                //row guest, seatings
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 16,right: 16,top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          flex:1,
                          fit: FlexFit.tight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 24,top: 7),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('No. of Guests', style: CustomStyle.subTitle,textAlign: TextAlign.start,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex: 2,
                                        fit: FlexFit.tight,
                                        child:  InkWell(
                                          onTap: (){
                                            //plus logic here
                                          },
                                          child: CustomStyle.getIcons(Icons.add, 16, CustomColors.colorPrimaryBlue),
                                        ),),
                                      Flexible(
                                        flex: 6,
                                        fit: FlexFit.tight,
                                        child:CustomStyle.getEditText('1', 14, 1),),
                                      Flexible(
                                        flex: 2,
                                        fit: FlexFit.tight,
                                        child:InkWell(
                                          onTap: (){
                                            //minus logic here
                                          },
                                          child: CustomStyle.getIcons(Icons.remove, 16, CustomColors.colorPrimaryBlue),
                                        ),),
                                    ],
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: CustomColors.grey_subtitle,
                                  )
                                ],
                              )
                            )
                          )
                      ),
                      Flexible(
                          flex:1,
                          fit: FlexFit.tight,
                          child: Padding(
                              padding: EdgeInsets.only(left: 24,top: 15),
                              child: CustomStyle.getEditTextWithIcon('Special Seating', 14, 1,TextInputType.text,
                                  Icons.keyboard_arrow_down,CustomColors.colorPrimaryBlue,20,'',CustomColors.colorPrimaryBlue,true))
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      bottomSheet: InkWell(
        onTap: () async {
          /*table booking popup*/
          var result = await showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              isDismissible: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(14),
                    topLeft: Radius.circular(14)),),
              builder: (context) => ModalBottomSheetDialog(popupStyle:'RequestSentPopup'));
          print('a:$result');
          Navigator.of(context).pop(result);
        },
        child: BtnContinue(CustomString.bookTable, context,'BookTable'),
      )
    );
  }
}