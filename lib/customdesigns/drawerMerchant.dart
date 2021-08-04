import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

bool isSubSetupVisible = false;

class GetMerchantDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          //header
          Container(
            height: 135,
            //width: MediaQuery.of(context).size.width * 0.85,
            width: 282,
            child: DrawerHeader(
              child: Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      child: CustomStyle.getImageBanner('assets/dummyboyimg.jpg', 59, 59, BoxFit.cover),
                    ),
                    SizedBox(width: 14,),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Mukesh Kumar',style: CustomStyle.blackBoldMerch_16,),
                          SizedBox(height: 8,),
                          Text('Naya Kirana bazzar',style: CustomStyle.blackNormalMerch_12,),
                        ],
                      ),),
                    SizedBox(width: 14,),
                    Icon(Icons.keyboard_arrow_down,size: 20,color: CustomColors.colorPrimaryOrange,)
                  ],
                ),
              ),
            ),
          ),

          Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    /*Home*/
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_HomeMerch',)));
                      },
                      child: GetContainer('Home', Icons.home_filled),
                    ),
                    CustomStyle.GetDivider(),

                    /*Setup*/
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_SetupMerch',)));
                      },
                      child:GetSetup(),
                    ),
                    CustomStyle.GetDivider(),

                    /*My Orders*/
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_MyOrdersMerch',)));
                      },
                      child: GetContainerImage('My Orders', 'assets/orders.png'),
                    ),
                    CustomStyle.GetDivider(),

                    /*if restaurant case then visiblity of khata = false*/
                    /*Khata*/
                    Visibility(
                      visible: true,
                        child:  InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_KhataMerch',)));
                          },
                          child:  GetContainerImage('Khata', 'assets/rupees.png'),
                        ),
                    ),
                    CustomStyle.GetDivider(),

                    /*if restaurant case then visiblity of table bookings = true*/
                    /*My Table Bookings*/
                    Visibility(
                      visible: true,
                      child:  InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_TableBookingMerch',)));
                        },
                        child:  GetContainerImage('My Table Bookings', 'assets/chair.png'),
                      ),
                    ),
                    CustomStyle.GetDivider(),

                    /*Promotions*/
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_PromotionsMerch',)));
                      },
                      child:GetContainerImage('Promotions', 'assets/pctg.png'),
                    ),
                    CustomStyle.GetDivider(),

                    /*Support*/
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_SupportMerch',)));
                      },
                      child:GetContainer('Support', Icons.chat_outlined),
                    ),
                    CustomStyle.GetDivider(),

                    /*Payment To Anydukaan*/
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_PaymentMerch',)));
                      },
                      child:GetContainerImage('Payment to Anydukaan', 'assets/paytoad.png'),
                    ),
                    CustomStyle.GetDivider(),

                    /*Settings*/
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_SettingsMerch',)));
                      },
                      child:GetContainer('Settings', Icons.settings),
                    ),
                    CustomStyle.GetDivider(),

                    /*Logout*/
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_LogoutMerch',)));
                      },
                      child:GetContainer('Logout', Icons.logout),
                    ),
                    CustomStyle.GetDivider(),
                  ],
                ),
              ))
        ],
      ),
    );
  }

}

Container GetContainer(String title, IconData icon){
  return Container(
    height: 46,
    margin: EdgeInsets.only(left: 16,top: 10,bottom: 10),
    child:Row(
      children: [
        CustomStyle.getIcons(icon, 20, CustomColors.colorPrimaryBlue),
        SizedBox(width: 12,),
        Text('$title',style: CustomStyle.blackNormalMerch_12,),
      ],
    ),
  );
}

Container GetContainerImage(String title, String icon){
  return Container(
    height: 46,
    margin: EdgeInsets.only(left: 16,top: 10,bottom: 10),
    child:Row(
      children: [
        CustomStyle.getImageIcons('$icon', 20, CustomColors.colorPrimaryBlue),
        SizedBox(width: 12,),
        Text('$title',style: CustomStyle.blackNormalMerch_12,),
      ],
    ),
  );
}

Container GetContainerText(String title){
  return Container(
    height: 26,
    margin: EdgeInsets.only(left: 48,bottom: 10),
    child:Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(),
          child:Text('$title',style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.start,),
        )
      ],
    )
  );
}

class GetSetup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SetUp();
  }


}

class SetUp extends State{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            setState(() {
              switch(isSubSetupVisible){
                case false:
                  isSubSetupVisible=true;
                  break;
                case true:
                  isSubSetupVisible=false;
                  break;
              }
            });
          },
          child: GetContainerImage('Setup', 'assets/module_info.png'),
        ),
        Visibility(
          visible: isSubSetupVisible,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_MyProdMerch',)));
                  },
                  child: GetContainerText('My Products'),
                ),

                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_DeliverySetupMerch',)));
                  },
                  child: GetContainerText('Delivery Setup'),
                ),

                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_PackagingMerch',)));
                  },
                  child:GetContainerText('Packaging'),
                ),

                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'Drawer_ApplyOffersMerch',)));
                  },
                  child:GetContainerText('Apply Offers'),
                ),
                
              ],
            ),
          ),),
      ],
    );
  }

}