import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/myAccountCards.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

bool switchStatus=true;

class PreferenceSettings extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBarWithoutSearch('Preference Settings',true,false,'assets/serch.png','assets/module_info.png'),
      body: SingleChildScrollView(
        child: Container(
         margin: EdgeInsets.only(left: 16,right: 16,top: 16),
          color: CustomColors.background_lightblue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){

                },
                child:getmyAccountCard(Icons.delivery_dining,CustomString.defdeltype, Icons.arrow_forward ),
              ),
              InkWell(
                onTap: (){
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      isDismissible: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14),
                            topLeft: Radius.circular(14)),),
                      builder: (context) => ModalBottomSheetDialog(popupStyle:'ChooseLangPopup'));
                },
                child:getmyAccountCard(Icons.sort_by_alpha,CustomString.changeLanguage, Icons.arrow_forward ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Setmerch_policy',)));
                },
                child:getmyAccountCard(Icons.policy,CustomString.privacyPolicy, Icons.arrow_forward ),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Acc_Notification',)));
                },
                child:Container(
                  height:58 ,
                  child: Card(
                    margin: EdgeInsets.only(top: 3),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(6)
                        )
                    ),

                    child:Padding(padding: EdgeInsets.only(left:16 ,right:16, top:10, bottom: 10),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            flex:1,
                            fit: FlexFit.tight,
                            child:Icon(Icons.notifications_active_outlined, size: 16, color: CustomColors.colorPrimaryBlue,),
                          ),
                          SizedBox(width: 5,),
                          Flexible(
                            flex:9,
                            fit: FlexFit.tight,
                            child: Text(CustomString.notfcn,style:CustomStyle.blackBoldlCust_14 ),
                          ),
                          Flexible(
                              flex:2,
                              fit: FlexFit.tight,
                              child: Container(
                                width: 35,
                                child: FlutterSwitch(
                                  width: 35.0,
                                  height: 20.0,
                                  toggleSize: 16,
                                  value: switchStatus,
                                  borderRadius: 30.0,
                                  padding: 2.0,
                                  toggleColor: Color.fromRGBO(225, 225, 225, 1),
                                  activeColor: CustomColors.colorPrimaryBlue,
                                  inactiveColor: CustomColors.greydark,
                                  onToggle: (val) {
                                    setState(() {
                                      switchStatus = val;
                                      if(switchStatus){
                                        /*set notification on*/
                                      }else{
                                        /*set notification off*/
                                      }
                                    });
                                  },
                                ),
                              )
                          ),
                        ],
                      ),
                    ),

                  ),
                ),
              ),

          ]
          ),
    ),
    )
    );
  }
}