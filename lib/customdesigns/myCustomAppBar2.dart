import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customSearchBar.dart';

/*Created by Chetana*/
class CustomAppBarWithSearch extends StatelessWidget with PreferredSizeWidget{

  @override
  final Size preferredSize;
  final String title;

  CustomAppBarWithSearch(this.title, {Key key}): preferredSize = Size.fromHeight(100),super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Container(
      child:Stack(
        children: [
          AppBar(
            title: Container(
              child: Row(
                children: [
                  Text(title,
                      style: CustomStyle.progressTitle),
                  SizedBox(width:13),
                  Icon(Icons.keyboard_arrow_down,color: CustomColors.white,)
                ],
              ),
            ),
            backgroundColor: CustomColors.colorPrimaryBlue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(10)
                )
            ),
            automaticallyImplyLeading: true,
            leading: Icon(Icons.arrow_back,color: CustomColors.white),
            actions: [Container(
              margin: EdgeInsets.only(right: 16),
              child: Image.asset("assets/notification.png",width: 24,height: 24,),
            )],

          ),

         /* Positioned(
            top: 80,
              child: Container(
                  child: SearchBar())),

          Positioned(
            left: 30,
              child: Container(
                  child:  Image.asset("assets/notification.jpg",width: 24,height: 24,fit: BoxFit.fill,))),*/


        ],
      )
    );
  }
}
