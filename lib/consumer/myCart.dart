import 'package:anydukaan/beanClasses/itemsBean.dart';
import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/cardWithButtonsListDesign.dart';
import 'package:anydukaan/customdesigns/cardWithFreqBroughtListDesign.dart';
import 'package:anydukaan/customdesigns/combo_cardList_reviewsList.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/expandableMerchList.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:anydukaan/valueresources/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Restaurant","Grocery","Vegetables","Restaurant","Grocery","Vegetables"];

final List<String> subentries = <String>["Restaurant","Grocery","Vegetables","Restaurant","Grocery","Vegetables","Restaurant","Grocery","Vegetables"];

List<ItemBeans> sectionList = List<ItemBeans>();

String dropdownValue = "All";

ListView List_Criteria;

class MyCart extends State {

  @override
  Widget build(BuildContext context) {
    return ExpansionTileSampleState();
  }
}

class ExpansionTileSampleState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: CustomColors.background_all,
        appBar: CustomAppBarWithoutSearch('Cart',true,false,'assets/serch.png','assets/module_info.png'),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          clipBehavior: Clip.antiAlias,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //expanded list of merchants and their products
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16,right: 16,top: 12),
                        child:ExpandedList(entries: entries,),
                      ),
                      SizedBox(height: 20,),
                      //frequently brougght together
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Text(CustomString.freqBrought,style: CustomStyle.blackBold16,),)
                        ],
                      ),
                      SizedBox(height: 20),
                      //frequently brougght together list
                      Container(
                        height: CustomDimens.cardheight_242,
                        margin: EdgeInsets.only(left: 16,right: 16),
                        child: CustomListView_cardWithbtns(),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Text(CustomString.otherProducts,style: CustomStyle.blackBold16,),)
                        ],
                      ),
                      SizedBox(height: 20,),
                      //list of order products and shop reviews
                      Container(
                        child: CardShopReviewListTemplate(entries: entries,),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          width: MediaQuery.of(context).size.width,
          height: 90,
          margin: EdgeInsets.only(bottom: 25,),
          child:FloatingActionButton(
            onPressed:()=>showModalBottomSheet(
                context: context,
                isDismissible: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(14),
                      topLeft: Radius.circular(14)),),
                builder: (context) => ModalBottomSheetDialog(popupStyle:'DeliveryLoc')),
            backgroundColor: Colors.transparent,
            elevation: 0,
            child:BtnViewCart_Checkout('Total Amount',CustomString.checkout,'₹25',context,'Checkout'),
          ),
        ),
        bottomSheet: CustomBottomBar(),
    );
  }
}

class CardShopReviewListTemplate extends StatefulWidget{
  List<String> entries;
  CardShopReviewListTemplate({Key key,this.entries}):super(key: key);

  @override
  State<StatefulWidget> createState() {

    return ComboCardListReviewsList(entries:entries);
  }
}

class ExpandedList extends StatelessWidget{
  List<String> entries;
  ExpandedList({Key key,this.entries}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: entries.length,    //pass merchants list length here
      itemBuilder: (BuildContext context, int i){
        return MerchantList();
      },
    );
  }
}

class CustomListView_cardWithbtns extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return ListViewFreq_cardWithbtns(entries: entries);
  }
}

