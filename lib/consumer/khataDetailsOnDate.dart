import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/dateDetails.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/myKhataCards.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/dialogBoxDesigns/loginPopup.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits",];

class KhataDetailsOnDate extends State{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:CustomAppBarWithoutSearch(CustomString.khataDtls,true,true,'','assets/chat_bubble.png'),
     body:SingleChildScrollView(
       child:Container(
         height: MediaQuery.of(context).size.height,
         margin: EdgeInsets.only(left: 16, right: 16,top: 10),
         color: CustomColors.background_lightblue,
         child: Column(
             mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               getmyKhataCard("Rajesh Kirana Store", "Groceries",'assets/placed_ord.png', "Accepted",'(₹83) Pay Now',context,false,''),
               SizedBox(height: 21,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment:  CrossAxisAlignment.start,
                 children: [
                   Padding(padding: EdgeInsets.only(left: 16 )),
                   Icon(Icons.date_range,
                     size: 14,
                     color: CustomColors.colorPrimaryBlue,
                   ),
                   SizedBox(width: 16,),
                   Text("MAR 2021", style:CustomStyle.blackBoldlCust_14, textAlign: TextAlign.left,),
                   SizedBox(height: 20,),
                 ],

               ),
               Flexible(
                 flex: 1,
                 child:Container(
                   height: MediaQuery.of(context).size.height-50,
                   child:CustomListView(),
                 ),
               )

             ]
         ),
       ),
     ),
       bottomSheet:Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           InkWell(
             onTap: (){
               /*open payment options*/
             },
             child: BtnContinue('(₹3,360) '+CustomString.payNow,context,''),
           )
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
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'KhataItemDetails',)));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 3,),
                  getmyDateDetails("23 March", "₹ 72"),
                ],
              )
          );
        }
    );
  }

}
