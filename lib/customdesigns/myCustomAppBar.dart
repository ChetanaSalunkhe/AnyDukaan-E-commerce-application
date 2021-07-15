import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*Created by Chetana*/
class CustomAppBarWithoutSearch extends StatelessWidget with PreferredSizeWidget{

  Size preferredSize;
  String title="";
  bool isLeadingVisible = true;
  bool isActionVisible = true;
  String img1="";
  String img2="";

  CustomAppBarWithoutSearch(this.title,this.isLeadingVisible,this.isActionVisible,this.img1,this.img2,
      {Key key}): preferredSize = Size.fromHeight(64),super(key: key);

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
      leading: Visibility(
        visible: isLeadingVisible,
        child: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: CustomColors.white,),
        ),
      ),
      actions: [
        Visibility(
          visible: isActionVisible,
            child: Container(
                margin: EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    Image.asset(img1,width: 24,height: 24,color: Colors.white,),
                    SizedBox(width: 16,),
                    Image.asset(img2,width: 24,height: 24,color: Colors.white,),
                  ],
                )
            ))
      ],
    );
  }

}
