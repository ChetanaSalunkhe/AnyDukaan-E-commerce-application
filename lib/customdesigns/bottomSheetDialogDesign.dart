import 'package:anydukaan/dialogBoxDesigns/availableQtyPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/deliveryLocationPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/menuOptionsPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/multiMerchPopup.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

import 'customButtons.dart';

class ModalBottomSheetDialog extends StatefulWidget {
  String popupStyle ="";
  ModalBottomSheetDialog({Key key,this.popupStyle}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    switch(popupStyle){
      case 'MultiMerch':
        return MultiMechPopup();
        break;
      case 'DeliveryLoc':
        return DeliveryLocPopup();
        break;
      case 'Login':
        //return LoginPopup();
        return AvailableQtyPopup();
        break;
      case 'MenuOption':
        return MenuOptionPopup();
        break;
    }
  }
}

