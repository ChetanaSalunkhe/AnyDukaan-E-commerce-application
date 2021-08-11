class AnydukanData{
  /********************************* Values *************************************/
  /*Live instance = mp, test instance = prasad */
  static var MARKETPLACE_CODE = "mp";
  static var instance = ".ekatm.co.in";
  static var instance2 = ".anydukaan.com";
  
  static var tokenSession = "";
  static var tokenGenerateTime = 0;
  static var customerType = "C";

  static var companyURL = "http://mp.anydukaan.com";
  static var envMasterId = "";
  static var appCode = "";
  static var environment = "";
  static var loginId = "";
  static var password = "";
  static var plantMasterId = "";
  static var plantName = "";
  static var isChatApplicable = "";
  static var isGPSLocation = "";

  static var ntf_Push = "Push_Notify";
  static var ntf_msgChat = "CHATMSG";

  static var PIN="";
  static var UPT = "";
  static var UPIPASSWORD = "";
  static var LOCAL_NAME;
  static var SHOP_CODE;
  static var SPECIALITY = "";
  static var ALTER_MOBILE;
  static var LANDMARK;
  static var LOCALITY;
  static var Lattitude = "";
  static var Longitude = "";

  static var CATEGORY="";
  static var SUBCATEGORY="";
  static var ITEMDESC="";
  static var ITEMDESCLOCAL="";
  static var ITEMCODE="";
  static var LANGCODE="";
  static var MRP="";
  static var CONTENT="";
  static var UOM="";
  static var PRODUCT="";
  static var Url="";
  static var REMARK="";
  static var BRAND="";

  static var FlagisUploadedTrue = "YES";
  static var FlagisUploadedFalse = "NO";
  static var FlagisUploadedFailed = "Failed";
  static int POSTFLAG = 1;
  static int GETFlAG = 0;
  static int ATTACHMENTFlAG = 2;

  static var selectedLanguage;
  static var selectedAgencyId;
  static var selectedAgencyName;
  static var selectedAgencyAddress;
  static var selectedAgencyCity;
  static var selectedAgencyContact;
  static var selectedAgencyDistance;
  static var selectedAgencyImage;
  static var selectedCategoryName;
  static int selectedOrderId;
  static int currentOrderId;
  static var serverOrderId;
  static var FULLNAME;
  static var EMAIL;
  static var ADDRESS;
  static var CITY = "";
  static var STATE;
  static var PINCODE;
  static var CUSTVENDTYPE;
  static var selected_BSEGMENTDESC;
  static var selected_BSEGMENTID;
  static var selected_BSEGMENTCODE;
  static var selected_MERCHID;
  static var MODULE="";
  

  /****************************** Notification Keys *****************************/
  static var orderbook="Book Order";
  static var ordercancel="Cancel Order";
  static var updateorder="Update Order";
  static var orderplace="Order place";
  static var orderpack="Order Packed";
  static var shipment="Shipment";
  static var NonAcpt="Non acceptance";
  static var FullAccpt="Full acceptance";
  static var PartAccpt="Part acceptance";
  static var ConfrmOrd="Confirm Order";
  static var welcomeCust="WelcomeCustomer";
  static var welcomeMerch="WelcomeMerchant";

  /*===============================================================================================*/

  /*Token--------------------------------------------------------*/
  static var api_getTokenApi = "/api/LoginAPI/AuthenticateUser";

  /*URL--------------------------------------------------------*/
  static var url_extension = "/api/OrderBillingAPI/";
  static var mainURL = companyURL+url_extension;

  /*Sessions--------------------------------------------------------*/
  static var api_getSessionEkatm = "/api/LoginAPI/GetSessions";
  static var api_getEnvironment = "/api/LoginAPI/GetEnvis";
  static var api_getPlant = "/api/LoginAPI/GetPlants";

  static var api_getSesActivate1 = "sesActivate1";
  static var api_getSesActivate2 = "sesActivate2";
  static var api_getSesActivate3 = "sesActivate3";

  /*Authentication--------------------------------------------------------*/
  static var api_getMobileVerify = "getVerificationData1";  /*verify mobile*/
  static var api_postCustomerRegister= "Authentication_new1"; /*register new customer*/
  static var api_postMerchantRegister= "POSTMerchRegis";  /*register new merchant*/

  /*GET methods--------------------------------------------------------*/
  static var api_getLogo = "GetCompanyLogo";  /*get company logo*/
  static var api_getStateList = "getStatelist"; /*get state list*/
  static var api_getCityList = "getCitylist"; /*get city list*/
  static var api_getSupportersList = "SupportPersonContDtl";  /*get supporter details*/
  static var api_getCustomerDetails = "GetCustomerDetails"; /*get ustoer details*/
  static var api_getMultipleShipToData = "/api/EntityMasterAPI/getRecordShip";  /*get records of shipto addresses*/
  static var api_getModuleSetupValues = "getModuleSetupValue";  /*get module setup values*/
  static var api_getOrderHistory = "getorderhistory"; /*get order history*/
  static var api_getPackagingOrderHistory = "getPendingrderHistory";  /*get pending orders*/
  static var api_getReceivedOrderDetails = "getShipmentDtlData";  /*get shipment data*/
  static var api_getUserDetails = "getuserdetails"; /*get user details*/
  static var api_getNotifications = "getNotificationMaster";  /*get notification list*/
  static var api_getAddressList = "getAllAddressForOrder";  /*get address list*/
  static var api_getRegisterDevice = "getRegisterDevice"; /*device register api*/
  /*static var api_getGenerateOTP = "GetGenerateOTP";*/ /*old API*/
  static var api_getGenerateOTP = "GetGenerateNewOTP";  /*new api in use*/
  static var api_getDeleteOrder = "DeleteOrder";  /*delete order*/
  static var api_getSoDetails= "getSODetail"; /*get so details*/
  static var api_getItemsList= "GetMultiMerchItem"; /*get items list for single and multi merchant*/
  static var api_getFamilyMasterWithItems= "getAllItemsAnyDukaan";  /*get family master and products data*/
  static var api_getFamilyMaster= "getFamilyDataAnyDukaan"; /*get all familymaster data*/
  static var api_getFamilyMasterMerchant= "getMerchFamilyData"; /*get family master of merchant*/
  static var api_getMerchantListByDistance = "getShopByMerchList";  /*get merchant list by distance*/
  static var api_getMerchantListByLatLng = "GetShopByCoordinates";  /*get merchant list by latlong*/
  static var api_getOrderAcceptance_SOList = "GetOrderAcceptanceSO";  /*get orders list for order acceptance*/
  static var api_get_selectedCategory = "GetMerchSalesFamily";  /*get merchant sales family*/
  static var api_getPackagingOrdersList = "getPendingordersforvendors"; /*get orders to be packed list*/
  static var api_Get_Ordertype = "/api/CRMCallAssignmentAPI/getOrderType";  /*get order type*/
  static var api_getItemsList_SO = "/api/ShipmentEntryAPI/GetListAsSo"; /*get packaging entry products list*/
  static var api_getPendingDeliveries = "/api/ShipmentEntryAPI/GetPendingDeliveryList"; /*get pending deliveries list*/
  static var api_getTransitShipments = "/api/ShipmentEntryAPI/GetTransitShipList";  /*get transit shipment list*/
  static var api_getOrderReport = "GetOrderReport"; /*get order report*/
  static var api_getFillCustomerSegment = "/api/SuspectMasterAPI/GetFillCustomerSegment"; /*get searched customer*/
  static var api_getMerchantDetails = "GetMerchantDetails"; /*get merchant details*/
  static var api_checkUPIPass = "CheckUPIPass"; /*check upi password*/
  static var api_getDelyChargeData = "GetDelyChargeData"; /*get delivery charge data*/
  static var api_checkItemExists = "CheckItemExists"; /*check items exists or not*/
  static var api_getPaymentHistory = "GetPaymentHistory"; /*get merchant to VSL payment history data*/
  static var api_getAnydukaanBanner = "GetAnydukaanBanner"; /*get banners list*/
  static var api_deliveryAgentDetails = "/api/ShipmentEntryAPI/getDeliveryBoyDetails";  /*get delivery boy details*/
  static var api_getMerchBrandList = "GetMerchBrandList"; /*get merchant brands list*/
  static var api_getBookTablDtls = "GetBookTableDetails";  /*get table booking requests*/
  static var api_getRatingDetails = "GetRatingDetails"; /*get ratings of merchant*/
  static var api_getConfigurationDetail = "/api/EntityMasterApi/GetConfigurationDetail_New";  /*get configuration details*/
  static var api_getELearningUrl = "GetELearningUrl"; /*get elearning url*/

  /*POST Methods--------------------------------------------------------*/
  static var api_postPlaceOrder = "generateorder";  /*place order*/
  static var api_postUpdateCustomer = "UpdateCustData"; /*update customer*/
  static var api_post_merchListItems = "POSTMerchPriceList";  /*post merchant price list*/
  static var api_post_selectedCategory = "POSTMerchSalesFamily";  /*post merchant sales family data*/
  static var api_postOrderAcceptance = "PostOrderAcceptance"; /*post order acceptance details*/
  static var api_postShipment = "/api/ShipmentEntryAPI/PostShipment"; /*post packaging data to server*/
  static var api_postReceiveOrderStatus = "getrcvstatuscnfrm";  /*send receive order confirmation to server*/
  static var api_uploadAttechmentnew = "/api/UploadFilesAPI/UploadFileForAndroid";  /*upload file*/
  static var api_merchantItemRequest = "POSTMerchantItemRequest"; /*post item request*/
  static var api_updateMerchData = "UpdateMerchData"; /*update merchant details*/
  static var api_postPaySTatus = "UpdatePaymentStatus";  /*customer to retailer payment*/
  static var api_postPaymentData = "PostPaymentData"; /*merch to vritti payment*/
  static var api_postDelyChargeData = "PostDelyChargeData"; /*post delivery charge data*/
  static var api_postShiptoAddress = "POSTShiptoAddress"; /*post address to server*/
  static var api_assignActivityToSuppAPI = "AssignActivityToSupportPer";  /*assign activity to supporter*/
  static var api_shipmentEntryAssignActivityAPI = "/api/ShipmentEntryAPI/AssignActivityToDeliveryBoy";  /*assign activity to delivery agent*/
  static var api_postMerchBrandData = "PostMerchBrandList"; /*post brands list*/
  static var api_postDeviceIdDownloads = "POSTUnRegDevice";
  static var api_postBookTableData = "POSTBookTableData";  /*book table to restaurant*/
  static var api_postAcceptBookReq = "POSTAcceptBookReq";  /*accept table request*/
  static var api_PostCustMerchantRequest = "PostCustMerchantRequest"; /*post customer merchant request*/
  static var api_updateNewEntityPost = "/api/EntityMasterAPI/POSTUpdateEntity"; /*post entity*/
  static var api_uploadFiles2API  = "/api/UploadFiles2API/postattachment2"; /*send attachment*/
  static var api_uploadFile = "/api/UploadFilesAPI/UploadFile"; /*upload file*/

  /*char room APIs--------------------------------------------------------*/
  static var api_GetRefreshChatRoom = "/api/ChatRoomApi/getRefreshChatRoomforAnyDukaan";
  static var api_GetCreateChatRoom = "/api/ChatRoomApi/GetCreateChatRoomforAnydukaan";
  static var api_DeleteChatMsges = "/api/ChatRoomApi/DeleteChatMsges";
  static var api_FileUpload = "/api/ChatRoomAPI/UploadFiles";
  static var api_GetRefreshMessages = "/api/ChatRoomApi/getRefreshMessagesforAnyDukaan";
  static var api_SendMessage = "/api/ChatRoomApi/SendMessageforAnyDukaan";
  static var api_GetChatRoomsForCallAnyDukaan = "/api/ChatRoomApi/getChatRoomsForCallAnyDukaan";
  static var INTENT_SEND_OFFLINE_DATA_FLAG_KEY = "offlinedatakey";
  static var INTENT_SEND_OFFLINE_DATA_FLAG_VALUE = "InstantStartOfService";
  static var api_DownloadImageImageAndroid = "/api/ChatRoomApi/DownloadImage";
  static var USERINFO_SHORTCUTADGER_COUNT = "UserInfo_ShortcutBadger";

/*===============================================================================================*/

}