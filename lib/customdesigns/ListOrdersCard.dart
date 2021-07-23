import 'package:anydukaan/customdesigns/ordersSummaryCard.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:flutter/material.dart';

ListView GetListOrdersCard(BuildContext context,List<String> entries,String image,var imgColor,String tabName){
  return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, int index){
       return InkWell(
         onTap: (){
           Navigator.push(context,
               MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'OrdDetailPage',)));
         },
          child: GetOrdersCard(context,entries,image,imgColor,tabName),
        );
      });
}