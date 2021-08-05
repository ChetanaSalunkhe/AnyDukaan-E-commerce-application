import 'package:anydukaan/customdesigns/bottomSheetDialogDesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/customdesigns/tabbarDesign.dart';
import 'package:anydukaan/customdesigns/tablebookingSetupCard.dart';
import 'package:anydukaan/merchant/delSetupPageMerchant.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<List<String>> entries = [
  ["Chetna Salunkhe","9876543210",],
  ["Rajesh Radhakrishnan","8765432109",],
  ["Subrat Panda","7654321098",],
];

int selectedIndex=0;

class DeliverySetupListMerchant extends State{

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length:2,
      child: Scaffold(
          backgroundColor: CustomColors.background_lightblue,
          appBar: CustomAppBarWithoutSearch_Merchant('Delivery Setup',true,true,'assets/help.png','assets/module_info.png','assets/hamburger_menu.png'),
          body: Container(
            child: GetTabDesignDelivery(context),
          ),
          floatingActionButton: SizedBox(
          height: 50.0,
          width: 58.0,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: CustomColors.colorPrimaryOrange,
              child: Icon(Icons.add,color: CustomColors.white,),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SecondRoute(callFrom:'AgentDetailsMerch')));
              },
            ),
          ),
        ),
      ),
    );

  }
}

Column GetTabDesignDelivery(context){
  return Column(
    children: [
      GetTabBar('Delivery Agents','Setup',),
      Expanded(child: TabBarView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16,right: 16,top: 16),
            child:GetAgentsList(entries: entries,),
          ),//items list

          SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 16),
                    child: GetDelSetupDesign(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          /*write save logic here*/
                        },
                        child: BtnContinue(CustomString.saveChanges, context, 'tableSetup'),
                      )
                    ],
                  )
                ],
              )
          ),
        ],
      ),),
    ],
  );
}

class GetAgentsList extends StatelessWidget{
  List<List<String>> entries;
  GetAgentsList({Key key,this.entries});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index){
          return InkWell(
            onTap: (){
              /*Navigator.push(context,
              MaterialPageRoute(builder: (context)=>SecondRoute(callFrom:'AgentDetailsMerch')));*/
            },
            child: Container(
              height: 77,
              margin: EdgeInsets.only(top: 10),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child:Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12,right: 12),
                        child: ReviewBorder(entries[index].first.substring(0,1),context,44,44,CustomColors.blueboxshade,CustomStyle.blueboldTitleText,true),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(entries[index].first,style: CustomStyle.blackBoldMerch_16,textAlign: TextAlign.start,),
                          SizedBox(height: 4,),
                          Text(entries[index].last,style: CustomStyle.subTitle_merch,textAlign: TextAlign.start,),
                        ],
                      ),
                    ],
                  )
              ),
            ),
          );
        });
  }

}