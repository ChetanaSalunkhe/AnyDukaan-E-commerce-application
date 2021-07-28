import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/tabbarDesign.dart';
import 'package:anydukaan/customdesigns/tablebookingSetupCard.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<List<String>> entries = [
  ["Chetna Salunkhe","4 Guests","25 Mar 2021","9.00 PM","Non AC Room"],
  ["Rajesh Radhakrishnan","10 Guests","28 Mar 2021","9.00 PM","AC Room"],
  ["Subrat Panda","5 Guests","30 Mar 2021","9.00 PM","AC Room"],
];

int selectedIndex=0;

class TableBookingsMerchant extends State{

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length:2,
      child: Scaffold(
          backgroundColor: CustomColors.background_lightblue,
          appBar: CustomAppBarWithoutSearch_Merchant('My Table Bookings',true,true,'','assets/help.png','assets/hamburger_menu.png'),
          body: Container(
            child: GetTabDesignTable(context),
          )
      ),
    );

  }
}

Column GetTabDesignTable(context){
  return Column(
    children: [
      GetTabBar('Requests','Setup',),
      Expanded(child: TabBarView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16,right: 16,),
            child:GetBookingsList(entries: entries,),
          ),//items list

          SingleChildScrollView(
            child:Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16,right: 16),
                  child: GetTableBookingSetupCard(context),
                ),
                InkWell(
                  onTap: (){
                    /*write save logic here*/
                  },
                  child: BtnContinue(CustomString.saveChanges, context, 'tableSetup'),
                )
              ],
            )
          ),
        ],
      ),),
    ],
  );
}

class GetBookingsList extends StatelessWidget{
  List<List<String>> entries;
  GetBookingsList({Key key,this.entries});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: 153,
            margin: EdgeInsets.only(top: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //Text('Chetana Salunkhe',style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.start,),
                        Text(entries[index].first,style: CustomStyle.blackBoldlCust_14,textAlign: TextAlign.start,),
                        SizedBox(height: 8,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child:Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          CustomStyle.getImageIcons('assets/chair.png', 16, CustomColors.colorPrimaryBlue,),
                                          SizedBox(width: 4,),
                                          Text(entries[index].elementAt(1),style: CustomStyle.blackNormalMerch_14,textAlign: TextAlign.center,)
                                        ],
                                      ),
                                      SizedBox(height: 9,),
                                      Text(entries[index].last,style: CustomStyle.subTitle_merch,textAlign: TextAlign.center,),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomStyle.getIcons(Icons.access_time, 16, CustomColors.colorPrimaryBlue),
                                  SizedBox(width: 4,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(entries[index].elementAt(2),style: CustomStyle.blackNormalMerch_14,textAlign: TextAlign.center,),
                                      SizedBox(height: 9,),
                                      Text(entries[index].elementAt(3),style: CustomStyle.blackBoldMerch_12,textAlign: TextAlign.center,),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: true,
                    child: Card(
                      elevation: 3,
                      shadowColor: CustomColors.black,
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                          )
                      ),
                      child: Container(
                        height: 50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Visibility(
                              visible: true,
                              child: InkWell(
                                splashColor: CustomColors.red,
                                onTap:(){
                                  //click event here
                                },
                                child: Container(
                                  width: 164,
                                  height: 50,
                                  padding: EdgeInsets.only(top: 18),
                                  child: Text(CustomString.reject,style: CustomStyle.warningText_merch_bold_12,textAlign: TextAlign.center,),
                                ),
                              ),),

                            //if order is not yet assign to del agent then visible
                            //if order assigned to del agent then visibility false
                            Visibility(
                                visible: true,
                                child: InkWell(
                                    splashColor: CustomColors.red,
                                    onTap:(){
                                      index = selectedIndex;

                                    },
                                    child:ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(6),
                                        topRight: Radius.circular(6),),
                                      child: Container(
                                        width: 156,
                                        height: 50,
                                        padding: EdgeInsets.only(top: 18),
                                        color: CustomColors.colorPrimaryOrange,
                                        child: Text(CustomString.accept,style: CustomStyle.whiteBoldMerch_12,textAlign: TextAlign.center,),
                                      ),
                                    )
                                )),
                          ],
                        ),
                      ),
                    ),),
                ],
              )
            ),
          );
        });
  }

}