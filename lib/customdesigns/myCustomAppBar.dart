import 'package:anydukaan/valueresources/customColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*Created by Chetana*/
class CustomAppBarWithoutSearch extends StatelessWidget with PreferredSizeWidget{

  @override
  final Size preferredSize;
  final String title;

  CustomAppBarWithoutSearch(this.title, {Key key}): preferredSize = Size.fromHeight(64),super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,
        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
      backgroundColor: CustomColors.colorPrimaryBlue,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10)
          )
      ),
      automaticallyImplyLeading: true,
      leading: Icon(Icons.arrow_back,color: CustomColors.white,),

    );
  }

}
