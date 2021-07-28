import 'package:anydukaan/consumer/myOrders.dart';
import 'package:anydukaan/customdesigns/customSearchBar.dart';
import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/customdesigns/tabbarDesign.dart';
import 'package:anydukaan/merchant/khataReqListMerchant.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:flutter/material.dart';

final List<List<String>> entries = [
  ["Venkatesh K Shantanu",CustomString.officeadr,"₹ 3200","assets/dummyboyimg.jpg"],
  ["Megha Chokroworthi","1005 - A, Lake Heights, S.V Road, Goregoan (E) 0.2KM away","₹ 1200","assets/dummyprof.jpg"],
];

int listsize=entries.length;

class KhataSectionMerchant extends State{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:2,
      child: Scaffold(
          backgroundColor: CustomColors.background_lightblue,
          appBar: CustomAppBarWithoutSearch_Merchant('Khata',true,true,'','assets/help.png','assets/hamburger_menu.png'),
          body: Container(
            child: GetTabDesignKhata(context),
          )
      ),
    );
  }
}

Column GetTabDesignKhata(context){
  return Column(
    children: [
      GetTabBar('Requests(03)','Consumer(03)',),
      Expanded(child: TabBarView(
        children: [
          SingleChildScrollView(
            physics: ScrollPhysics(),
            child:  Container(
                margin: EdgeInsets.only(left: 16,right: 16,),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 16,),
                    SearchBar(hint: 'Search Name',),
                    Container(
                      child: listsize>0?GetKhataList(entries:entries,isBtnVisible: true,):Container(
                        child: BlankState(msg:CustomString.khataCleared, isBtnVisibile:false,img: 'assets/nopendingkhata.png',),
                      ),
                    ),
                  ],
                )
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 16,right: 16,),
            child:GetKhataList(entries:entries,isBtnVisible: false,),
          ),//items list

        ],
      ),),
    ],
  );
}
