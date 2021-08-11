
import 'package:anydukaan/customdesigns/addressCard.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectAddress extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithoutSearch(CustomString.myAddr,true,false,'assets/serch.png','assets/module_info.png'),
      body:Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(left: 16,right: 16),
        color: CustomColors.background_lightblue,
        child:ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index){
              return InkWell(
                onTap: (){
                  /*select address logic here*/
                },
                /*pass address type here*/
                child: AddressCard(CustomString.home,),
              );
            }),
      ),
    );
  }
}