import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/customSearchBar.dart';
import 'package:anydukaan/customdesigns/invoiceDetailMerchant.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/customdesigns/tabbarDesign.dart';
import 'package:anydukaan/customdesigns/warningToMerchant.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

final List<List<String>> entries = [
  ["Pending","1st - 28th Feb 2021","128","3","20","₹ 404","31st Jan, 11:30 PM","2nd Mar, 1:30 PM","UPI","9876543210@upi"],
];

final List<List<String>> entries_paid = [
  ["December 2020","2nd Dec 2020, 10:30 AM","₹ 404","COD",],
  ["November 2020","2nd Nov 2020, 2:30 PM","₹ 650","Debit Card",],
  ["Octomber 2020","3rd October 2020, 12:30 PM","₹ 250","UPI",],
];

int selectedIndex=0;

class PaymentToAdukanMerchant extends State{

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length:2,
      child: Scaffold(
          backgroundColor: CustomColors.background_lightblue,
          appBar: CustomAppBarWithoutSearch_Merchant(CustomString.payToAd,true,true,'','assets/help.png','assets/hamburger_menu.png'),
          body: Container(
            child: GetTabDesign(context),
          ),
      ),
    );

  }
}

Column GetTabDesign(context){
  return Column(
    children: [
      GetTabBar('Pending Invoices(01)','All Invoices(03)',),
      Expanded(child: TabBarView(
        children: [
          SingleChildScrollView(
              child:Stack(
                children: [
                  Column(
                    children: [
                      GetWarning(),
                      Container(
                        margin: EdgeInsets.only(left: 16,right: 16),
                        child: GetInvoiceList(entries: entries,),
                      ),
                      SizedBox(height: 12,),
                      InkWell(
                        onTap: (){
                          /*write save logic here*/
                        },
                        child: BtnContinue('(₹404) '+CustomString.payNow, context, 'PendingInvoice'),
                      )
                    ],
                  )
                ],
              )
          ),

          SingleChildScrollView(
            physics: ScrollPhysics(),
            child:  Container(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 16,),
                    SearchBar(hint: CustomString.serchInvoice,width: MediaQuery.of(context).size.width,height: 44,radius: 20,margin: 16,),
                    Container(
                      margin: EdgeInsets.only(left: 16,right: 16,),
                      child: GetPaidInvoiceList(entries_paid: entries_paid,),
                    ),
                  ],
                )
            ),
          ),//items list
        ],
      ),),
    ],
  );
}

class GetInvoiceList extends StatelessWidget{
  List<List<String>> entries;
  GetInvoiceList({Key key,this.entries});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index){
          return GetInvoiceDetailCard(entries,true, false);
        });
  }

}

class GetPaidInvoiceList extends StatelessWidget{
  List<List<String>> entries_paid;
  GetPaidInvoiceList({Key key,this.entries_paid});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: entries_paid.length,
        itemBuilder: (BuildContext context, int index){
          return InkWell(
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'InvoiceDetails',params: entries,)));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child:Padding(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                                flex: 8,
                                fit: FlexFit.tight,
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(entries_paid[index].first, style:CustomStyle.blackBoldMerch_12,),
                                    SizedBox(width: 4,),
                                    CustomStyle.getIcons(Icons.check_circle, 16, CustomColors.greenlight),
                                  ],
                                )
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child:Text(entries_paid[index].elementAt(2), style:CustomStyle.blackBoldMerch_16,textAlign: TextAlign.end,),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              flex: 7,
                              fit: FlexFit.tight,
                              child:Text(entries_paid[index].elementAt(1), style:CustomStyle.subTitle_merch,),),
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child:ReviewBorder(entries_paid[index].elementAt(3),context,70,38,CustomColors.greenboxshade,CustomStyle.greenText10_merch,false),),
                          ],
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  )
              ),
            ),
          );
        });
  }

}