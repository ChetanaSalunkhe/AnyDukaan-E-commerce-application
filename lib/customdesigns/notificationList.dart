import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/notification_card.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<List<String>> entries = [
  ["Order Placed","Your order 2104000101 of Rs. 500 has been booked successfully with Rajesh Kirana Store."],
  ["Order Cancelled","Your order 2104000099 of Rs. 300 has been cancelled by Grocery Kirana Store."],
  ["Table Request","Your request of table booking for 25th Mar 2021 8.00 PM send successfully."],
  ["Out For Delivery","Your order 2104000087 of Rs. 1000 is out for delivery."],
];

class NotificationList extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBarWithoutSearch(CustomString.notfcn,true,false,'assets/serch.png','assets/module_info.png'),
      body:Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(left: 16, right: 16,top: 20),
        color: CustomColors.background_lightblue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text('10 New Notification',style: CustomStyle. blackNormalCust_14,textAlign: TextAlign.left,
              softWrap: true,overflow: TextOverflow.fade,maxLines: 2,
            ),
            Expanded(
              child:CustomListView(),
            )
          ],
        ),
      ),
    );
  }

}

class CustomListView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return ListViewUIkhata();
  }
}

class ListViewUIkhata extends State{
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
                /* Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'HomeShop',)));*/
              },
              child:Column(
                children: [
                  getmyNotificationCard(entries[index].first, '10 mins ago', entries[index].elementAt(1), context),
                ],
              )
          );
        }
    );
  }

}