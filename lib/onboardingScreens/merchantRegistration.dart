import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String selectedSegment;
String selectedLocation = CustomString.officeadr;

class MerchantRegistration extends State {
  void _showOverlay(BuildContext context)  {
    Navigator.of(context).push(TutorialOverlay());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBarWithoutSearch(CustomString.registration,true,false,'assets/help.png','assets/notification_merch.png',),
      body:SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 16,right: 16,top: 16),
                  child:Text(CustomString.shopDtls,style: CustomStyle.blackBoldMerch_14,),),
              Padding(
                padding: EdgeInsets.only(left: 10,right: 10,top: 12),
                child:/*Select Segment*/
                TextButton(
                  onPressed: (){
                    /*open registration page*/
                    _showOverlay(context);
                  },
                  child: DropdownSearch<String>(
                    mode: Mode.MENU,
                    showSelectedItem: true,
                    showSearchBox: false,
                    showAsSuffixIcons: true,
                    popupBackgroundColor: CustomColors.greyline,
                    label: CustomString.segmnt,
                    hint: CustomString.selSegment,
                    enabled: false,
                    selectedItem: selectedSegment,
                  ),
                ),),
              Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*Shop Name*/
                    CustomStyle.getEditTextEnterDetails(CustomString.hintname, 14, 2, TextInputType.text,CustomStyle.blackNormalMerch_16),
                    SizedBox(height: 10,),
                    /*Location*/
                    InkWell(
                      onTap: (){
                        AwesomeDialog(
                          context: context,
                          animType: AnimType.SCALE,
                          dialogType: DialogType.NO_HEADER,
                          body:Container(
                            height: 188,
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomStyle.getImageIcons('assets/location_blue.png', 18, CustomColors.colorPrimaryBlue),
                                SizedBox(height: 12,),
                                Text(CustomString.hintallow,style: CustomStyle.blackNormalCust_14,textAlign: TextAlign.center,),
                                SizedBox(height: 15,),
                                CustomStyle.GetDivider(),
                                TextButton(
                                    onPressed: (){
                                      /*allow logic here*/
                                    },
                                    child: Text(CustomString.hintallowonly,style: CustomStyle.primaryBtnTextOrange,),),
                                TextButton(
                                  onPressed: (){
                                    /*deny logic here*/
                                    Navigator.pop(context);
                                  },
                                  child:Text(CustomString.deny,style: CustomStyle.tabbarTitleText,),),

                              ],
                            ),
                          ),
                        ).show();
                      },
                      child:CustomStyle.getEditTextWithIcon(CustomString.loc, 14, 5, TextInputType.text,Icons.my_location_outlined,
                          CustomColors.colorPrimaryBlue, 16,'$selectedLocation',CustomColors.colorblackmerch,false),
                    ),
                    SizedBox(height: 20,),
                    Text(CustomString.ownerDtls,style: CustomStyle.blackBoldMerch_14,),
                    /*Merchant name*/
                    CustomStyle.getEditTextEnterDetails(CustomString.hintnameowner, 14, 2, TextInputType.text,CustomStyle.blackNormalMerch_16),
                    SizedBox(height: 10,),
                    /*Mobile*/
                    CustomStyle.getEditTextMobile(CustomString.mobNum, 14, 10, TextInputType.number,CustomStyle.blackNormalMerch_16),
                    SizedBox(height: 12,),
                    InkWell(
                      onTap: (){
                        /*open otp dialogue*/
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            isDismissible: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(14),
                                  topLeft: Radius.circular(14)),),
                            builder: (context) => ModalBottomSheetDialog(popupStyle:'LoginOTP',params:{'keyType':'Merchant'}));
                      },
                      child:BtnContinue(CustomString.sendOTP,context,'LoginPopup'),
                    ),
                    SizedBox(height: 12,),
                    Visibility(
                      visible: true,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(CustomString.alreadyUser,style: CustomStyle.blackNormalMerch_12,),
                          TextButton(
                            onPressed: (){
                              /*open registration page*/
                              Navigator.pop(context);
                            },
                            child:Text(CustomString.login,style: CustomStyle.tabbarTitleText,),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}


final List<String> entries = <String>["Restaurant","Grocery","Vegetables","Fruits","Meat",
  "Sweets","Dry Fruits","Stationary",];

class TutorialOverlay extends ModalRoute<void> {
  @override
  Duration get transitionDuration => Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.8);

  @override
  String get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
    // This makes sure that text and other content follows the material style
    return Material(
      type: MaterialType.transparency,
      // make sure that the overlay content is not cut off
      child: SafeArea(
        //child: _buildOverlayContent(context),
        child: _buildOverlayContent_segment(context),
      ),
    );
  }

  Widget _buildOverlayContent_segment(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 9,
                    fit: FlexFit.tight,
                    child: Text(CustomString.selSegment,style: CustomStyle.whiteBoldMerch_14,textAlign: TextAlign.center,),),
                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: CustomStyle.getIcons(Icons.close, 16, CustomColors.white),
                      )),
                ],
              ),
              SizedBox(height: 12,),
              SingleChildScrollView(
                child:CustomGridView(),
              )
            ],
          ),
        )
    );
  }

  @override
  Widget buildTransitions(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    // You can add your own animations for the overlay content
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }
}

class CustomGridView extends StatefulWidget{
  /* List<String> entries;
  CustomGridView({Key key,this.entries}):super(key: key);*/

  @override
  State<StatefulWidget> createState() {

    return GridViewUI();
  }
}

class GridViewUI  extends State{
  /* List<String> entries;
  GridViewUI({Key key, this.entries});*/

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.4,
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){
                setState(() {
                  selectedSegment=entries[index].toString();
                  print(selectedSegment);
                  Navigator.pop(context);
                });
              },
              child:Column(
                children: [
                  Container(
                    width: 117,
                    height: 106,
                    child: Card(
                      margin: EdgeInsets.only(right: 8,left: 8,bottom: 8,top:8),
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:CustomStyle.getImageBanner('assets/rest.png', 567, 56, BoxFit.scaleDown),
                    ),

                  ),
                  SizedBox(height: 6,),
                  Text(entries[index].toString(),style: CustomStyle.whiteBoldMerch_12,),
                ],
              )
          );
        }
    );
  }

}