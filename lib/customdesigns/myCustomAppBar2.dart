import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customSearchBar.dart';

/*Created by Chetana*/
class CustomAppBarWithSearch extends StatelessWidget with PreferredSizeWidget{

  @override
  Size preferredSize;
  String title="";
  String searchHint="";

  CustomAppBarWithSearch({Key key, this.title,this.searchHint}):preferredSize=Size.fromHeight(100),super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Container(
      child:Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        overflow: Overflow.visible,
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
            leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,color: CustomColors.white,),
            ),
            actions: [Container(
              margin: EdgeInsets.only(right: 16),
              child: Image.asset("assets/notification.png",width: 24,height: 24,),
            )],
          ),

          Positioned(
              top: 98,
              child: Container(
                  child: SearchBar(hint: 'searchHint',))),
                  //child: SearchBar())),
        ],
      )
    );
  }
}
