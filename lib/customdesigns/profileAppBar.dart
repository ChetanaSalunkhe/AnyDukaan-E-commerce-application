import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

class ProfileAppBarCommon extends StatelessWidget with PreferredSizeWidget{

  Size preferredSize;
  String title="";
  String subtitle="";
  String imgLead="";
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  ProfileAppBarCommon(this.title,this.subtitle,this.imgLead,
      {Key key}): preferredSize = Size.fromHeight(120),super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 107,
      title:Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: CustomColors.white),),
            SizedBox(height: 6,),
            InkWell(
              onTap: (){
                /*open profile page here*/
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Setmerch_profile',params: 'Profile',)));
              },
              child:Text(subtitle,
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: CustomColors.white,decoration: TextDecoration.underline),),
            )
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
      leadingWidth: 103,
      leading:Container(
        padding: EdgeInsets.only(left: 16,top: 20),
        child: ClipOval(
          child:CustomStyle.getLogoImages(imgLead, 100,100),
        ),
      )

    );
  }

}