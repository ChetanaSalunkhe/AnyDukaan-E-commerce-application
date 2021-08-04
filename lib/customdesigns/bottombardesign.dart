import 'package:anydukaan/customdesigns/secondRoute.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:anydukaan/valueresources/customColors.dart';

import 'customButtons.dart';

class CustomBottomBar extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return BottomBarDesign();
  }

}

class BottomBarDesign extends State{
  var _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation:100,
        shadowColor: CustomColors.black,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),topRight: Radius.circular(20))
        ),
        child: BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, //use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
            switch(_selectedIndex){
              case 0:
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'BottomHome',)));
                break;
              case 1:
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'BottomCart',)));
                break;
              case 2:
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'BottomOrders',)));
                break;
              case 3:
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondRoute(callFrom: 'BottomAccount',)));
                break;
            }
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: CustomColors.colorPrimaryBlue,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text('Cart'),
                activeColor: CustomColors.colorPrimaryBlue
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.shopping_bag),
                title: Text('Orders'),
                activeColor: CustomColors.colorPrimaryBlue
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.supervisor_account),
                title: Text('Account'),
                activeColor: CustomColors.colorPrimaryBlue
            ),
          ],
        ),
      ),
    );
  }

}