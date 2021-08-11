import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/khata_ItemListCard.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary"];

class KhataItemList extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBarWithoutSearch(CustomString.khataDtls,true,true,'','assets/chat_bubble.png'),
      body:Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(left: 16, right: 16,top: 20),
        color: CustomColors.background_lightblue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 11,bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.date_range,
                    size: 14,
                    color: CustomColors.colorPrimaryBlue,
                  ),
                  SizedBox(width: 16,),
                  Text("MAR 2021", style:CustomStyle.blackBoldlCust_14, textAlign: TextAlign.left,),
                ],
              ),),
            Expanded(
              child:CustomListView(),
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
      bottomSheet:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: BtnContinue('(₹72) '+CustomString.payNow, context, 'KhataDetailBtn'),
          ),
        ],
      )
    );
  }

}

class CustomListView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return ListViewUIkhata();
  }
}

class ListViewUIkhata extends State {
  int i;

  @override
  Widget build(BuildContext context) {
    print(i.toString());
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                /* Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'HomeShop',)));*/
              },
              child: Column(
                children: [
                  getmyListCard("Govardhan Milk Tonned Milk", "100 gms", "₹ 26", "23 March", context)
                ],
              )
          );
        }
    );
  }

}