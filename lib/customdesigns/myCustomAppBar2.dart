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

  CustomAppBarWithSearch(this.title, {Key key}): preferredSize = Size.fromHeight(109),super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Container(
      child:Stack(
        children: [
          AppBar(
            title: Text(title,
                style: CustomStyle.progressTitle),
            backgroundColor: CustomColors.colorPrimaryBlue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(10)
                )
            ),
            automaticallyImplyLeading: true,
            leading: Icon(Icons.arrow_back,color: CustomColors.white,),
          ),
          Positioned(
              top: 104,
              child: SearchBar()),
        ],
      )
    );
  }
}
