import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/cardWithButtonsListDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar2.dart';
import 'package:anydukaan/customdesigns/shopListDesign.dart';
import 'package:anydukaan/customdesigns/tabBarIndicator.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary"];

class ItemsListing extends State{

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBarWithSearch(title:'Search Items',searchHint:'Milk',isLeadingVisible:true,isActionVisible:false,img: 'assets/audio_search.png',),
        body: Container(
          height: MediaQuery.of(context).size.height-150,
          child: Column(
            children: [
              SizedBox(height: 12,),
              TabBar(
                indicatorColor: CustomColors.colorPrimaryBlue,
                labelColor: CustomColors.grey_subtitle,
                unselectedLabelColor: CustomColors.grey_subtitle,
                indicator: /*UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3.0,color: CustomColors.colorPrimaryBlue,),  //height of indicator
                    insets: EdgeInsets.symmetric(horizontal:74.0),
                  //margin left and right to indicator
                ),*/    //customised indicator
                MD2Indicator(
                  indicatorSize: MD2IndicatorSize.normal,
                  indicatorHeight: 3.0,
                  indicatorColor: CustomColors.colorPrimaryBlue,
                ),
                tabs: [
                  Tab(text: 'Items',),
                  Tab(text: 'Shops',)
                ],
              ),

              Expanded(child: TabBarView(
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
          visible: true,
          child: BtnViewCart_Checkout('1 Item',CustomString.viewCart,'₹25',context,'ViewCart'),
          //child: BtnViewCart_Checkout('Total Amount',CustomString.checkout,'₹25'),
          //child: BtnViewCart_Checkout('Total Amount',CustomString.placeOrder,'₹25'),
        ),//view cart button
      )
    );
  }
}

//title
class TextTitle extends StatefulWidget{
  String title ="";
  TextTitle({Key key,this.title}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    print('$title');
    return TextTitleView(title1:'$title');
  }

}

class TextTitleView extends State{
  String title1 ="";
  TextTitleView({Key key,this.title1});

  @override
  Widget build(BuildContext context) {
    print('$title1');
    return Container(
        margin: EdgeInsets.only(left: 16,right: 16),
        child: Row(
          children: [
            Text('$title1',style: CustomStyle.textTitle,),
            Text(' (06)',style: CustomStyle.textsemiboldblackTitle,),
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
                                      Text('Free Delivery',style: CustomStyle.greenText10,),
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

