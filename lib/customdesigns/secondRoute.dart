import 'package:anydukaan/consumer/bookTable.dart';
import 'package:anydukaan/consumer/checkotutCOD.dart';
import 'package:anydukaan/consumer/checkoutScreen_1.dart';
import 'package:anydukaan/consumer/homepage_gothrough.dart';
import 'package:anydukaan/consumer/itemsListing.dart';
import 'package:anydukaan/consumer/khataDetails.dart';
import 'package:anydukaan/consumer/khataDetailsOnDate.dart';
import 'package:anydukaan/consumer/khataItemList.dart';
import 'package:anydukaan/consumer/myCart.dart';
import 'package:anydukaan/consumer/myItemsCust.dart';
import 'package:anydukaan/consumer/myOrderDetails.dart';
import 'package:anydukaan/consumer/myOrders.dart';
import 'package:anydukaan/consumer/myOrdersList.dart';
import 'package:anydukaan/consumer/myTableBookings.dart';
import 'package:anydukaan/consumer/myaccount_list.dart';
import 'package:anydukaan/consumer/preferenceSettings.dart';
import 'package:anydukaan/consumer/productDetails.dart';
import 'package:anydukaan/consumer/returnProducts.dart';
import 'package:anydukaan/consumer/select_address.dart';
import 'package:anydukaan/consumer/shopDetails.dart';
import 'package:anydukaan/consumer/shoplisting.dart';
import 'package:anydukaan/customdesigns/merchantReview.dart';
import 'package:anydukaan/customdesigns/notificationList.dart';
import 'package:anydukaan/customdesigns/raiseComplaint.dart';
import 'package:anydukaan/merchant/addNewProductMerchant.dart';
import 'package:anydukaan/merchant/apply_offersMerchant.dart';
import 'package:anydukaan/merchant/chooseBrandsMerchant.dart';
import 'package:anydukaan/merchant/chooseFromList.dart';
import 'package:anydukaan/merchant/dashboardMerchant.dart';
import 'package:anydukaan/merchant/delDetailsMerch.dart';
import 'package:anydukaan/merchant/deliverySetupMerchant.dart';
import 'package:anydukaan/merchant/editProductMerchant.dart';
import 'package:anydukaan/merchant/filtersMerchant.dart';
import 'package:anydukaan/merchant/invoiceDtlPage.dart';
import 'package:anydukaan/merchant/khataCustDetailsMerchant.dart';
import 'package:anydukaan/merchant/khataSectionMerchant.dart';
import 'package:anydukaan/merchant/myProducts.dart';
import 'package:anydukaan/merchant/myProfileMerchant.dart';
import 'package:anydukaan/merchant/offersDetailsMerchant.dart';
import 'package:anydukaan/merchant/packagingMerchant.dart';
import 'package:anydukaan/merchant/paymentPreference.dart';
import 'package:anydukaan/merchant/paymentToAdukanMerchant.dart';
import 'package:anydukaan/merchant/policyMerchant.dart';
import 'package:anydukaan/merchant/promotions.dart';
import 'package:anydukaan/merchant/reviewMerchant.dart';
import 'package:anydukaan/merchant/homeScreenMerchant.dart';
import 'package:anydukaan/merchant/myOrderDetailPageMerchant.dart';
import 'package:anydukaan/merchant/myOrdersMerchant.dart';
import 'package:anydukaan/merchant/revenueStatusMerchant.dart';
import 'package:anydukaan/merchant/selectImagesProductMerch.dart';
import 'package:anydukaan/merchant/settingsMerchant.dart';
import 'package:anydukaan/merchant/smsBundle.dart';
import 'package:anydukaan/merchant/supportMerchant.dart';
import 'package:anydukaan/merchant/tableBookingsListMerchant.dart';
import 'package:anydukaan/onboardingScreens/loginPage.dart';
import 'package:anydukaan/onboardingScreens/merchantRegistration.dart';
import 'package:anydukaan/onboardingScreens/selectLanguage.dart';
import 'package:anydukaan/onboardingScreens/walkThrough.dart';
import 'package:flutter/material.dart';
import 'mainSearchDesign.dart';

class SecondRoute extends StatefulWidget {
  String callFrom="";
  var params;
  SecondRoute({Key key,this.callFrom,this.params}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    switch(callFrom){
      /**********************  Splash, Onboarding  ****************************************/
      case 'Splash':
        return SelectLanguageScreen();
        break;
      case 'SelLang':
        return WalkThroughScreen();
        break;
      case 'WalkThr':
        return LoginPage();
        break;
      case 'LoginRegister':
        return MerchantRegistration();
        break;
      /**************************************** Consumer Calls *******************************************************/
      case 'ConsumerHome':
        return HomePageState();
      case 'Shops':
        return ShopListing();
        break;
      case 'Products':
        return ItemsListing();
        break;
      case 'SearchBar':
        return MainSearchDesign();
        break;
      case 'HomeShop':
        return ShopDetails(params: params);
        break;
      case 'HomeProduct':
        return ProductDetails();
        break;
      case 'WalkThrough':
        return WalkThroughScreen();
        break;
      case 'BottomHome':
        return HomePageState();
        break;
      case 'BottomCart':
        return MyCart();
        break;
      case 'BottomOrders':
        /*consumer orders*/
        return MyOrders();
        break;
      case 'AllOrdersList':
        return MyOrdersList();
        break;
      case 'OrdersDetails':
        return MyOrderDetails();
        break;
      case 'ReturnProductOrd':
        return ReturnProduct();
        break;
      case 'WriteReview':
        return MerchantReview();
        break;
      case 'BottomAccount':
        return MyAccount();
        break;
      case 'BookTable':
        return BookTable();
        break;
      case 'Acc_MyAddress':
      return SelectAddress();
        break;
      case 'Acc_MyKhata':
      return KhataDetails();
        break;
      case 'KhataDetails':
        return KhataDetailsOnDate();
        break;
      case 'KhataItemDetails':
        return KhataItemList();
        break;
      case 'Acc_MyItems':
        return KhataItems();
        break;
      case 'Acc_MyTableBooking':
        return MyTableBookings();
        break;
      case 'Acc_Preferences':
      return PreferenceSettings();
        break;
      case 'Acc_Complaint':
      return RaiseComplaint();
        break;
      case 'Acc_ShareApp':
      /*share app*/
        break;
      case 'Acc_Notification':
      return NotificationList();
        break;
      case 'checkoutDelDtls':
        return CheckoutScreen1();
        break;
      case 'checkoutSuccess':
        return CheckoutCOD();
        break;
        /**************************************** Merchant Calls *******************************************************/
      case 'MerchantHome':
        return Dashboard();
        break;
      case 'DashBoardMerch':
        return RevenueStatusMerchant();
        break;
      case 'MReviews':
        return ReviewMerchant();
        break;
      case 'OrdDetailPage':
        return MyOrderDetailsPageMerchant();
        break;
      case 'Drawer_HomeMerch':
        return HomeMerchant();
        break;
      case 'Drawer_MyOrdersMerch':
        return MyOrdersMerchant(isTabBarShop: true);
        break;
      case 'Drawer_KhataMerch':
        return KhataSectionMerchant();
        break;
      case 'Drawer_PromotionsMerch':
        return PromotionsMerchant();
        break;
      case 'Drawer_SupportMerch':
        return SupportMerchant();
        break;
      case 'Drawer_PaymentMerch':
        return PaymentToAdukanMerchant();
        break;
      case 'Drawer_SettingsMerch':
        return SettingsMerchant();
        break;
      case 'Drawer_LogoutMerch':
        //Navigator.pop(context);
        break;
      case 'Drawer_MyProdMerch':
        return MyProductsMerchant();
        break;
      case 'Drawer_DeliverySetupMerch':
        return DeliverySetupListMerchant();
        break;
      case 'Drawer_PackagingMerch':
        return PackagingMerchant();
        break;
      case 'Drawer_ApplyOffersMerch':
        return ApplyOffersMerchant();
        break;
      case 'Drawer_TableBookingMerch':
        return TableBookingsMerchant();
        break;
      case 'AddNewProd':
        return AddNewProductMerchant();
        break;
      case 'EditProd':
        return EditProductMerchant();
        break;
      case 'ChangeImageMerch':
        return SelectProductImagesMerchant();
        break;
      case 'FiltersMerch':
        return FiltersMerchant();
        break;
      case 'ChooseListMerch':
        return ChooseFromListMerchant();
        break;
      case 'ChooseBrandsMerch':
        return ChooseBrandsMerchant();
        break;
      case 'AgentDetailsMerch':
        return DeliveryAgentDetails();
        break;
      case 'KhataCustDtlsMerch':
        return KhataCustDetails();
        break;
      case 'ApplyOffrDtlsMerch':
        return ApplyOffersDetailsMerchant(title:params);
        break;
      case 'InvoiceDetails':
        return InvoiceDetails(entries: params);
        break;
      case 'Setmerch_profile':
        return MyProfileMerchant(params:params);
        break;
      case 'Setmerch_paypref':
        return PaymentPrefSetting();
        break;
      case 'Setmerch_policy':
        return PolicySetting();
        break;
      case 'Setmerch_shopdtl':
        return MyProfileMerchant(params:params);
        break;
      case 'Promotions':
        return SMSBundle(params:params);
        break;
    }
  }
}