import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/cardWithButtonsListDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar2.dart';
import 'package:anydukaan/customdesigns/shopListDesign.dart';
import 'package:anydukaan/customdesigns/tabBarIndicator.dart';
import 'package:anydukaan/customdesigns/tabbarDesign.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary"];

bool isCartBtnVisible=true;
class ItemsListing extends State{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: CustomColors.background_lightblue,
        appBar: CustomAppBarWithSearch(title:CustomString.srchItems,searchHint:'Milk',isLeadingVisible:true,isActionVisible:false,img: 'assets/audio_search.png',),
        body: Container(
          height: MediaQuery.of(context).size.height-150,
          child: Column(
            children: [
              SizedBox(height: 12,),
              GetTabBar('Items (03)','Shops (05)'),
              Expanded(
                child: TabBarView(
                children: [
                  CustomListView_shops(),   //items list

                  CustomListViewShops(entries: entries,)//shops list

                ],
              ),),
            ],
          ),
        ),

        //make visible true on adding item in cart
        bottomSheet: Visibility(
          visible: isCartBtnVisible==true?true:false,
          child: InkWell(
            onTap: (){
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(14),
                        topLeft: Radius.circular(14)),),
                  builder: (context) => ModalBottomSheetDialog(popupStyle:'MultiMerch'));
            },
            child:BtnViewCart_Checkout('1 Item',CustomString.viewCart,'₹25',context,'ViewCart'),
          )
        ),//view cart button
      )
    );
  }
}

//title
class blackNormalCust_14 extends StatefulWidget{
  String title ="";
  blackNormalCust_14({Key key,this.title}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    print('$title');
    return blackNormalCust_14View(title1:'$title');
  }

}

class blackNormalCust_14View extends State{
  String title1 ="";
  blackNormalCust_14View({Key key,this.title1});

  @override
  Widget build(BuildContext context) {
    print('$title1');
    return Container(
        margin: EdgeInsets.only(left: 16,right: 16),
        child: Row(
          children: [
            Text('$title1',style: CustomStyle.blackNormalCust_14,),
            Text(' (06)',style: CustomStyle.blackBoldlCust_14,),
          ],
        )

    );
  }


}

//shops list
class CustomListView_shops extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return ListViewUI_shops();
  }
}

class ListViewUI_shops extends State{
  int i;

  @override
  Widget build(BuildContext context) {
    print(i.toString());
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){

              },
              child:Container(
                margin: EdgeInsets.only(bottom: 8),
                color: CustomColors.background_lightblue,
                height: 350,
                  child: Card(
                    color: CustomColors.white,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Rajesh Kirana Store',style: CustomStyle.boldValueText,),
                              SizedBox(width: 6,),
                              CustomStyle.getImageIcons("assets/verifytag.png",12,CustomColors.colorPrimaryOrange),

                            ],
                          ),

                          SizedBox(height: 7,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomStyle.getImageIcons("assets/location.png",12,CustomColors.colorPrimaryOrange),
                                  SizedBox(width: 4,),
                                  Text('1.2km Goregaon(E)',style: CustomStyle.subTitle,),

                                ],
                              ),

                              Flexible(
                                  flex:1,
                                  fit: FlexFit.loose,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CustomStyle.getImageIcons("assets/free_delivery.png",12,CustomColors.greenlight),
                                      SizedBox(width: 4,),
                                      Text(CustomString.freeDel,style: CustomStyle.greenText10,),
                                    ],
                                  ))
                            ],
                          ),

                          SizedBox(height: 15,),

                          Container(
                            height: 250,
                            child: CustomListView_cardWithbtns(),
                          ),
                        ],
                      ),
                    ),
                  )
              )
          );
        }
    );
  }
}

//products list
class CustomListView_cardWithbtns extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return ListViewUI_cardWithbtns(entries: entries);
  }
}

