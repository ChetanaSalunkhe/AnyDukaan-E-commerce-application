/*Created by Chetana*/
class CustomString{
  static var search = "Search";
  static var subTitle = "SubTitle";
  static var dukansAndRest = "Dukaans & Restaurants Nearby";
  static var recomendForYou = "Recommended for you";
  static var viewAll = "VIEW ALL";
  static var offerZone = "Offer Zone";
  static var offers = "Flat\n60% off\non Best Sellers";
  static var title_shops_near = "Shops & restaurants near you";
  static var title_rest_near = "Restaurants near you";
  static var viewCart = "View Cart";
  static var checkout = "Checkout";
  static var continue_ = "Continue";
  static var sendOTP = "Send OTP";
  static var confirm = "Confirm";
  static var addAddress = "Add Address";
  static var placeOrder = "Place Order";
  static var backToCart = "Back to Cart";
  static var multMerch = "Mutliple Merchants";
  static var cancel = "Cancel";
  static var searchHere = "Search here...";
  static var selectLanguage = "Select Language";
  static var requestKhata = "Request Khata";
  static var otherProducts = "Other products from same dukaan";
  static var freqBrought = "Frequently Brought Together";
  static var manfcture = "Manufactured on: 23 March 21’";
  static var shopReviews = "Shop Reviews";
  static var login = "Login";
  static var avalQty = "Available Quantity";
  static var addToCart = "Add to Cart";
  static var menuOption = "Menu Options";
  static var orderType = "Order Type";
  static var congrats = "Congratulations!";
  static var timedate= "Pickup Date & Time";
  static var date= "05 Apr 2021";
  static var paymode= "Available Payment Modes";
  static var timeslot = "Time Slot";
  static var ordercancel = "Order Cancel";
  static var orderdelivered = "Order Delivered";
  static var orderdelivered_not = "Order Not Delivered";
  static var maintainKhata = "Now maintain a Digital Khata";
  static var yesDeliver = "Yes Delivered";
  static var notDeliver = "Not Delivered";
  static var cancelOrd = "Cancel Order";
  static var areYouSure = "Are you sure,\n You want cancel this Order?";
  static var continue_shopping = "No, Continue shopping";
  static var yesCancel = "Yes Cancel";
  static var issueWithOrd = "Issue With Order";
  static var returnProduct = "Return Product";
  static var replaceProduct = "Replace Product";
  static var raiseComplaint = "Raise a Complaint";
  static var submit = "Submit";
  static var sendMsg = "Send Message";
  static var msg1 = "Reaching in 10 minutes";
  static var msg2 = "I will pick up order late";
  static var msg3 = "I will pick up order tomorrow";
  static var msg4 = "Please deliver order at my home";
  static var msg5 = "I am outside your shop keep";
  static var reqSent = "Request Sent";
  static var tableReserved = "Table Reserved";
  static var preOrder = "Pre-Order";
  static var bookTable = "Book a Table";

  /*dialog messages*/
  static var dmsg1 = "Orders from different Merchants will have different Delivery Charge and Delivery timing.";
  static var dmsg2 = "Gowardhan Gold Milk is Processed (Homogenious and Pasteriuzed) in Modern Dairy Plant, Using a time-testing and Ultra Modern technique to capture the essential Vitamins and Protien content. and the naturalness ofPure Cow Milk.";
  static var dmsg3 = "Products are good but order was delivered very late and were not properly packed. Cost is reasonable and there are good offers as well.";
  static var dmsg4 = "In case of UPI, amount will be transfer by the Merchant within 2 Working days.";
  static var dmsg_warning = "Your Order has been cancelled by the merchant. We are Sorry for the Incovience!";
  static var dmsg_warning2 = "Incase of UPI, paid money will be trasfered by merchant within 2 Days";
  static var dmsg_warning_khata = "New order will not be placed until khata balance is clear at the end of each month.";
  static var dmsg_warning_ordmark = "Once order marked delivered will not be returned.";
  static var dmsg_warning_sorry = "We are Sorry for your Incovience! \n An alert has been sent to the merchant. \n We will make sure your order is delivered soon.";
  static var dmsg_raise_complaint = "You can raise a complaint in case the problem is not resolved in 24 hours";
  static var dmsg2_placeord = "You have successfully placed the order We will keep you order packed.";
  static var dmsg_selreason_cancel = "Please select the reason for cancellation";
  static var dmsg_selreason_replace= "Please select the reason for replacement";
  static var dmsg_selreason_return= "Please select the reason for refund";
  static var dmsg_selreason_cancel_subtitle = "It will help us understand your issue better and improve the experience.";
  static var dmsg_we_notify = "We will notify you once your table is reserved.";
  static var dmsg_warning_booking= "If not seen before 20 minutes of booking time then booking will get cancelled.";
  static var dmsg_success_preorder= "You have successfully pre-ordered dish items worth : ";
  static var adr = 'B-1204, Sun City, Goregoan Dindoshi Depot FlimCity Road, Goregoan East, Mumbai - 63';
  static var homeadr = "B-1204, Sun City, Goregoan Dindoshi Depot FlimCity Road Goregoan East, Mumbai - 63";
  static var officeadr = "9 Continental Park Vritti Solutions Limited Near Karve Statue, Kothrud, Pune, 411038";
  static var localadr = "";

  /*radio group values*/
  static String singleValue = "Text alignment right";
  static String verticalGroupValue = "Home";
  static List<String> status = ["Home", "Work", "Others"];

  static String groupValQty = "Small";
  static List<String> status_qty = ["Small        ₹ 75", "Medium      ₹ 135", "Large        ₹ 205"];

  static String value_reasons_cancelorder = "Product is taking too long to be delivered";
  static List<String> reasons_cancelorder = [
    "Product is taking too long to be delivered",
    "Product is not required anymore",
    "Cheaper alternative is available for lesser price",
    "Cash not available for COD",
    "Order created by mistake",
    "Item(s) would not arrive on time",
    "Item price is too high",
    "Order mismatched",
  ];

  static String value_reasons_replaceproduct = "Wrong product delivered";
  static List<String> reasons_replaceproduct = [
    "Wrong product delivered",
    "Product didn’t matched its description",
    "Product was damaged upon arrival",
    "Product is no longer fit to be sold or eaten",
  ];

  static String value_reasons_returnproduct = "Wrong product delivered";
  static List<String> reasons_returnproduct = [
    "Wrong product delivered",
    "Product didn’t matched its description",
    "Product was damaged upon arrival",
    "Product is no longer needed",
  ];

  Map<String, bool> values = {
    'Apple': false,
    'Banana': false,
    'Cherry': false,
    'Mango': false,
    'Orange': false,
  };


}