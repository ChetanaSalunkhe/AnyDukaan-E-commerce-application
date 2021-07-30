import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customSearchBar.dart';

/*Created by Chetana*/
class CustomAppBarWithSearch_Merch extends StatelessWidget with PreferredSizeWidget{
  @override
  Size preferredSize;
  String title="";
  String searchHint="";
  bool isLeadingVisible = true;
  bool isActionVisible = true;
  String img="";
  String img1="";
  String img2="";
  String imgLead="";

  CustomAppBarWithSearch_Merch({Key key,this.isLeadingVisible,this.isActionVisible,this.title,this.searchHint,
    this.img,this.img1,this.img2,this.imgLead}):preferredSize=Size.fromHeight(100),super(key: key);

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
            leading: Visibility(
              visible: isLeadingVisible,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);   //close current screen and go to previous screen
                },
                child: CustomStyle.getImageIcons(imgLead, 24, CustomColors.white)
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
                          InkWell(
                            onTap: (){
                              if(img2.contains('assets/call.png')){
                                showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    isDismissible: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(14),
                                          topLeft: Radius.circular(14)),),
                                    builder: (context) => ModalBottomSheetDialog(popupStyle:'SupportCallPopup'));
                              }else{

                              }
                              /*Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'AppBarAction2',)));*/
                            },
                            child:Image.asset(img2,width: 24,height: 24,color: Colors.white,),
                          )
                        ],
                      )
                  ))
            ],
          ),

          Positioned(
              top: 98,
              child: Container(
                  child: SearchBar(hint: '$searchHint',width: 328,height: 44,radius: 20,margin:16))),
                  //child: SearchBar())),
        ],
      )
    );
  }
}
