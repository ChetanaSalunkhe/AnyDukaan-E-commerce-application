import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*Created by Chetana*/
class CustomAppBarWithoutSearch extends StatelessWidget with PreferredSizeWidget{

  Size preferredSize;
  String title="";

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
      leading: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back,color: CustomColors.white,),
      ),
      actions: [Container(
        margin: EdgeInsets.only(right: 16),
        child: Row(
          children: [
            Image.asset("assets/serch.png",width: 24,height: 24,color: Colors.white,),
            SizedBox(width: 16,),
            Image.asset("assets/module_info.png",width: 24,height: 24,color: Colors.white,),
          ],
        )
      )],
    );
  }

}
