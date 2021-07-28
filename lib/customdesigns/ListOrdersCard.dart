import 'package:anydukaan/consumer/myOrders.dart';
import 'package:anydukaan/customdesigns/ordersSummaryCard.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:flutter/material.dart';

Container GetListOrdersCard(BuildContext context,List<String> entries,String image,var imgColor,String tabName,int listSize){
  return listSize>0? Container(
    child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, int index){
          return InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'OrdDetailPage',)));
            },
            child: GetOrdersCard(context,entries,image,imgColor,tabName,index),
          );
        }
    ),
  ):Container(
    child: BlankState(msg:'No Orders Placed!', isBtnVisibile:false,img: 'assets/blankstate.png',),
  );
}