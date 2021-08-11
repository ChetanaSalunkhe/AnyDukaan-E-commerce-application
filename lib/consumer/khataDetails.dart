import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar2.dart';
import 'package:anydukaan/customdesigns/myKhataCards.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["Restaurant","Grocery",];

class KhataDetails extends State{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: CustomColors.background_lightblue,
     appBar: CustomAppBarWithSearch(title:'My Khata',searchHint:'Search Khata',isLeadingVisible:true,isActionVisible:false),
     body:SingleChildScrollView(
       child:Container(
         margin: EdgeInsets.all(16),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               height: MediaQuery.of(context).size.height,
               child:CustomListView(),
             )
           ],
         ),
       ),
     ),
     floatingActionButton: SizedBox(
       height: 50.0,
       width: 58.0,
       child: FittedBox(
         child: FloatingActionButton(
           backgroundColor: CustomColors.colorPrimaryOrange,
           child: Icon(Icons.add,color: CustomColors.white,),
           onPressed: () {
             /*add khata logic here*/
           },
         ),
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
                /*show khata details*/
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'KhataDetails',)));
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getmyKhataCard("Rajesh Kirana Store", "Groceries",'assets/placed_ord.png', "Accepted",
                      '(₹83) '+CustomString.payNow,context,true,'accepted'),
                ],
              )
          );
        }
    );
  }

}