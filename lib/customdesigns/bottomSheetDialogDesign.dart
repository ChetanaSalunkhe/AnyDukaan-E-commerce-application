import 'package:anydukaan/dialogBoxDesigns/applyOfferPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/assignDeliveryAgentPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/availableQtyPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/banerRequestPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/cancelOrder.dart';
import 'package:anydukaan/dialogBoxDesigns/cancelOrderReasonsPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/chooseLangPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/createDelAgentPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/deliveryLocationPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/issueWithOrderPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/loginPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/menuOptionsPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/multiMerchPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/orderCancelPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/orderDeliveredPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/orderNotDeliveredPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/otpPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/replaceProductReasonsPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/requestKhataPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/requestSentPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/returnProductReasonsPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/scanProdNotFoundPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/sendMessagePopup.dart';
import 'package:anydukaan/dialogBoxDesigns/supportCallPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/tableReservedPopup.dart';
import 'package:anydukaan/dialogBoxDesigns/tableReservedPopup_success.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';

import 'customButtons.dart';

class ModalBottomSheetDialog extends StatefulWidget {
  String popupStyle ="";
  var params;
  ModalBottomSheetDialog({Key key,this.popupStyle,this.params}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    switch(popupStyle){
      case 'LoginOTP':
        return OTPPopup(params:params);
        break;
      case 'MultiMerch':
        return MultiMechPopup();
        break;
      case 'DeliveryLoc':
        return DeliveryLocPopup();
        break;
      case 'Login':
        return LoginPopup();
        break;
      case 'AvalQty':
        return AvailableQtyPopup();
        break;
      case 'MenuOption':
        return MenuOptionPopup();
        break;
      case 'CancelOrder':
        return OrderCancelPopup();
        break;
      case 'RequestKhata':
        return RequestKhataPopup();
        break;
      case 'OrderDelivered':
        return OrderDeliveredPopup();
        break;
      case 'OrderNotDelivered':
        return OrderNotDeliveredPopup();
        break;
      case 'CancelOrderPopup':
        return CancelOrderPopup();
        break;
      case 'IssueWithOrder':
        return IssueWithOrderPopup();
        break;
      case 'CancelOrderReasons':
        return CancelOrderReasonsPopup();
        break;
      case 'ReplaceProductReasons':
        return ReplaceProductReasonsPopup();
        break;
      case 'ReturnProductReasons':
        return ReturnProductReasonsPopup();
        break;
      case 'SendMessage':
        return SendMessagePopup();
        break;
      case 'RequestSentPopup':
        return RequestSentPopup();
        break;
      case 'TableReservePopup':
        return TableReservedPopup();
        break;
      case 'TableReserveSuccessPopup':
        return TableReservedSuccessPopup();
        break;
      case 'ScanProdPopup':
        return ProductNotPresentPopup();
        break;
      case 'AssignDelAgentPopup':
        return AssignDeliveryAgentPopup();
        break;
      case 'ChooseLangPopup':
        return ChooseLangPopup();
        break;
      case 'CreateAgentPopup':
        return CreateDelAgentPopup();
        break;
      case 'ApplyOfferPopup':
        return ApplyOfferPopup();
        break;
      case 'BannerRequestPopup':
        return BannerRequestPopup();
        //return SupportCallPopup();
        break;
      case 'SupportCallPopup':
        return SupportCallPopup();
        break;
    }
  }
}

