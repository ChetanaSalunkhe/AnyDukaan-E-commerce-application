import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*Created by Chetana*/
class CustomAppBarWithoutSearch_Merchant extends StatelessWidget with PreferredSizeWidget{

  Size preferredSize;
  String title="";
  bool isLeadingVisible = true;
  bool isActionVisible = true;
  String img1="";
  String img2="";
  String imgLead="";
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  CustomAppBarWithoutSearch_Merchant(this.title,this.isLeadingVisible,this.isActionVisible,this.img1,this.img2,this.imgLead,
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
            //Navigator.pop(context);
            Scaffold.of(context).openDrawer();
          },
          child:Image.asset(imgLead,width: 24,height: 24,color: Colors.white,),
        ),
      ),
      actions: [
        Visibility(
            visible: isActionVisible,
            child: Container(
                margin: EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        switch(img1){
                          case 'assets/help.png':
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>SecondRoute(callFrom:'Drawer_SupportMerch')));
                            break;
                        }
                      },
                      child:Image.asset(img1,width: 24,height: 24,color: Colors.white,),
                    ),
                    SizedBox(width: 16,),
                    InkWell(
                      onTap: (){
                        switch(img2){
                          case 'assets/help.png':
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>SecondRoute(callFrom:'Drawer_SupportMerch')));
                            break;
                          case 'assets/module_info.png':
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>SecondRoute(callFrom:'Drawer_SupportMerch')));
                            break;
                          case 'assets/notification_merch.png':
                          Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>SecondRoute(callFrom:'Acc_Notification')));
                            break;
                        }
                      },
                      child:Image.asset(img2,width: 24,height: 24,color: Colors.white,),
                    )
                  ],
                )
            ))
      ],
    );
  }

}
