import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/cardWithButtonsGridDesign.dart';
import 'package:anydukaan/customdesigns/collapseToolbar.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/customPageIndicator.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/customdesigns/shopListDesign.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary"];

String dropdownValue = "All";
bool isStatusLineVisible=false;
String status="";

class ShopDetails extends State{
  var params;
  ShopDetails({Key key,this.params});

  @override
  Widget build(BuildContext context) {
    String title = CustomString.title_shops_near;

    return Scaffold(
        //resizeToAvoidBottomInset: true,
      appBar: CustomAppBarWithoutSearch(params=='Shops'?CustomString.shopDtls:CustomString.restDtls,
          true,false,'assets/serch.png','assets/module_info.png'),
        body: SingleChildScrollView(
          child: Container(
            color: CustomColors.background_lightblue,
            margin: EdgeInsets.zero,
           // height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14)
                  ),
                  child: Container(
                    //color: CustomColors.white,
                    margin: EdgeInsets.zero,
                    alignment: Alignment.center,
                    height: 318,
                    decoration: CustomStyle.getBoxShadow(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 32,),
                        CustomStyle.getImageBanner('assets/shop.png',328,144,BoxFit.cover),

                        SizedBox(height: 22,),
                        Container(
                            margin: EdgeInsets.only(left: 16,right: 16),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex:6,
                                      fit: FlexFit.tight,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('Rajesh Kirana Store',style: CustomStyle.blackBold16,),
                                          SizedBox(width: 8,),
                                          CustomStyle.getImageIcons('assets/rating.png', 12, CustomColors.colorPrimaryOrange),
                                          SizedBox(width: 6,),
                                          Text('4.2',style: CustomStyle.blackNormalCust_14,),
                                        ],
                                      ),),
                                    Flexible(
                                      flex:4,
                                      fit: FlexFit.tight,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          CustomStyle.getImageIcons('assets/free_delivery.png', 12, CustomColors.greenlight),
                                          SizedBox(width: 6,),
                                          Text('Grocery',style: CustomStyle.greenText12,),
                                        ],
                                      ),),
                                  ],
                                ),
                                SizedBox(height: 9,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex:6,
                                      fit: FlexFit.tight,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          CustomStyle.getImageIcons('assets/location.png', 12, CustomColors.colorPrimaryOrange),
                                          SizedBox(width: 6,),
                                          Text('1.2 km Goregaon(E)',style: CustomStyle.subTitle,),
                                        ],
                                      ),),
                                    Flexible(
                                      flex:4,
                                      fit: FlexFit.tight,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          CustomStyle.getImageIcons('assets/free_delivery.png', 12, CustomColors.greenlight),
                                          SizedBox(width: 6,),
                                          Text('Free Delivery',style: CustomStyle.greenText12,),
                                        ],
                                      ),),
                                  ],
                                ),
                                SizedBox(height: 17,),
                                Visibility(
                                  visible:params=='Shops'?true:isStatusLineVisible==false?true:false,
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        onTap:() async{
                                          if(params=='Shops'){
                                            showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                isDismissible: true,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(14),
                                                      topLeft: Radius.circular(14)),),
                                                builder: (context) => ModalBottomSheetDialog(popupStyle:'RequestKhata'));
                                          }else{
                                            var result = await Navigator.push(context,
                                                MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'BookTable',)));
                                            print(result['reqStatus'].toString());
                                            setState(() {
                                              isStatusLineVisible = true;
                                              status = result['reqStatus'].toString();
                                            });
                                          }
                                        },
                                        child: BtnWithArrow(params=='Shops'?CustomString.requestKhata:CustomString.bookTable,context,172,40,true,CustomStyle.orangeOutline,
                                            CustomStyle.primaryBtnTextOrange,CustomColors.colorPrimaryOrange,Icons.arrow_forward),
                                      ),
                                    ],
                                  ),
                                ),
                                Visibility(
                                  visible:isStatusLineVisible==true?true:false,
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('$status',style: CustomStyle.primaryBtnTextOrange,),
                                      SizedBox(width: 6,),
                                      CustomStyle.getImageIcons('assets/time.png', 16, CustomColors.colorPrimaryOrange),
                                    ],
                                  ),
                                )
                              ],
                            )
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  margin: EdgeInsets.only(left: 16,right: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('1500+ products',style: CustomStyle.blackNormalCust_14,textAlign: TextAlign.left,),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Container(
                        width: 328,
                        height: 44,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(40))
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 16,right: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap:(){
                                          showModalBottomSheet(
                                              context: context,
                                              isScrollControlled: true,
                                              isDismissible: true,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(14),
                                                    topLeft: Radius.circular(14)),),
                                              builder: (context) => ModalBottomSheetDialog(popupStyle:'MenuOption'));
                                      },
                                        child: Row(
                                          children: [
                                            Text('$dropdownValue',style: CustomStyle.primaryBtnTextOrange_12,),
                                            SizedBox(width: 12,),
                                            CustomStyle.getIcons(Icons.keyboard_arrow_down,14,CustomColors.colorPrimaryOrange),
                                            SizedBox(width: 12,),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 4,bottom: 4),
                                        child: VerticalDivider(color: CustomColors.colorPrimaryOrange,),),
                                      Container(
                                        width: 200,
                                        alignment: Alignment.centerLeft,
                                        child: CustomStyle.getEditTextSearch('Search shop', 14,1),
                                      ),
                                      CustomStyle.getImageIcons('assets/serch.png', 16, CustomColors.grey_subtitle)

                                    ],
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: CustomGridView(entries:entries),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar : CustomBottomBar()
    );
  }
}

class CustomGridView extends StatefulWidget{
  List<String> entries;
  CustomGridView({Key key,this.entries}):super(key: key);

  @override
  State<StatefulWidget> createState() {

    return GridViewUI_cardWithbtns(entries:entries);
  }
}