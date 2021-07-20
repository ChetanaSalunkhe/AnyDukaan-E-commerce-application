import 'package:anydukaan/customdesigns/merchAppBar.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:flutter/material.dart';

class MyOrdersMerchant extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch_Merchant('My Orders',true,true,'assets/help.png','assets/module_info.png',
          'assets/hamburger_menu.png'),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

            ],
          ),
        )
      ),
    );
  }
}