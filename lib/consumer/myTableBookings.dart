import 'package:anydukaan/customdesigns/bottombardesign.dart';
import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/customPageIndicator.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/tableBookingsList.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

List<String> entries = <String>["Restaurant","Grocery","Vegetables",];

class MyTableBookings extends State{

  @override
  Widget build(BuildContext context) {
    String title = CustomString.title_shops_near;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBarWithoutSearch('My Table Bookings',true,false,'assets/serch.png','assets/module_info.png'),
      body:Container(
        margin: EdgeInsets.only(left: 16,right: 16,top: 12),
        child: Column(
          children: [
            //list of bookings
            TableBookingsList(entries:entries),
          ],
        ),
      ),
    );
  }

}

