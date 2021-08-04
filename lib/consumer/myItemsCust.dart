import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar2.dart';
import 'package:anydukaan/customdesigns/myKhataCards.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["Restaurant","Grocery",];

class KhataItems extends State{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: CustomColors.background_lightblue,
     appBar: CustomAppBarWithoutSearch('My Items',true,false,'assets/serch.png','assets/module_info.png'),
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

              },
              child:Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child:Padding(
                    padding: EdgeInsets.all(10),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomStyle.getImageBanner('assets/prod2.png', 70, 70, BoxFit.cover),
                        Flexible(
                          flex: 1,
                            fit: FlexFit.tight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Cadbury Dairy Milk Fruit & Nut Chocolate',style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.start,
                                  softWrap: true,maxLines: 2,overflow: TextOverflow.fade,),
                                Text('Snacks',style: CustomStyle.subTitle,textAlign: TextAlign.start,),
                                Text('G Mart Super Store',style: CustomStyle.subTitle,textAlign: TextAlign.start,),
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Text('₹ 120',style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.start,),),
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child:BtnWithArrow('+ Add', context, 104, 40, false, CustomStyle.orangeOutline,
                                          CustomStyle.orangeText12, CustomColors.colorPrimaryOrange, Icons.add)),
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                  )
                ),
              )
          );
        }
    );
  }

}