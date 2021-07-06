import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:anydukaan/valueresources/customColors.dart';

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
      /*decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),*/
      child: Card(
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