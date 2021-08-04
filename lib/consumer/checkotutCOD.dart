import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutCOD extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBarWithoutSearch('Checkout',true,false,'','assets/chat_bubble.png'),
       body: SingleChildScrollView(
         child: Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,    //vertical alignment
             crossAxisAlignment: CrossAxisAlignment.center, //horizontal alignment
             children: [
               SizedBox(height:30),
               Container(
                 child: CustomStyle.getLogoImages('assets/chkout_grcery.png', 250,216),
               ),

               Padding(padding: EdgeInsets.only(left: 16,right: 16),
                 child: Text(CustomString.congrats,style:CustomStyle.blueBoldText16,),
               ),

               SizedBox(height:30),

               Padding(padding: EdgeInsets.only(left: 32,right: 32),
                 child: Text(CustomString.dmsg2_placeord,style:CustomStyle.blackNormalCust_14,
                   softWrap: true,overflow: TextOverflow.fade,maxLines: 2,textAlign: TextAlign.center,),),

               SizedBox(height: 20,),
               InkWell(
                 onTap: (){
                   /*go to cart screen*/
                   Navigator.pop(context);
                 },
                 child: BtnContinue(CustomString.backToCart,context,'BackToCart'),
               ),
             ],
           ),
         ),
       ),

    );
    }
}