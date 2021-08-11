import 'package:anydukaan/customdesigns/customButtons.dart';
import 'package:anydukaan/customdesigns/listRevenueDataMerchant.dart';
import 'package:anydukaan/customdesigns/merchStatusCards.dart';
import 'package:anydukaan/customdesigns/myCustomAppBar.dart';
import 'package:anydukaan/customdesigns/statusBarPaymentMerchant.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

List<charts.Series> seriesList=_createSampleData();

class RevenueStatusMerchant extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background_lightblue,
      appBar: CustomAppBarWithoutSearch(CustomString.revenueStatus,true,true,'assets/help.png','assets/notification_merch.png',),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    BtnWithArrow(CustomString.month, context, 130, 40, true, CustomStyle.blueOutline, CustomStyle.blue_merch_normal_12,
                      CustomColors.colorPrimaryBlue,Icons.keyboard_arrow_down),
                    Flexible(
                      flex:1,
                      fit: FlexFit.tight,
                      child: Text('23 Mar 2020',style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.end,),
                  )
                ],
            ),),
            //barchart
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(0)),
              child: Column(
                children: [
                  Container(
                      color: CustomColors.white,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.zero,
                      child:Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16),
                            child:Text('₹ 81,280',style: CustomStyle.orange_merch_24,textAlign: TextAlign.center,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child:Text('March 2021',style: CustomStyle.blackNormalMerch_12,textAlign: TextAlign.center,),
                          ),
                        ],
                      )
                  ),
                  Container(
                      height: 300,
                      decoration: CustomStyle.getBoxShadow(),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child:SimpleBarChart(seriesList,animate: false,),
                      )
                  ),
                ],
              )
            ),

            //COD,UPI,Khata status
            GetStatusBarMerchant(),

            GetMerchOrdStatusCards(),

            Padding(
              padding:EdgeInsets.only(left:16,right:16,bottom: 16),
              child:Text(CustomString.buyPatterns,style:CustomStyle.blackBoldMerch_16,textAlign: TextAlign.start,),
            ),

            Container(
              margin: EdgeInsets.only(left: 16,right: 16,bottom: 16),
              child: CustomRadioButton(
                elevation: 0,
                //width: 102,
                height: 32,
                absoluteZeroSpacing: false,
                enableShape: true,
                unSelectedColor: Theme.of(context).canvasColor,
                buttonLables: [CustomString.cat, CustomString.subcat, CustomString.prod,],
                buttonValues: [CustomString.cat, CustomString.subcat, CustomString.prod,],
                buttonTextStyle: ButtonTextStyle(
                    selectedColor: CustomColors.white,
                    unSelectedColor: CustomColors.colorblackmerch,
                    textStyle: CustomStyle.blackNormalMerch_12),
                radioButtonValue: (value) {
                  print(value);
                },
                selectedColor: CustomColors.colorPrimaryBlue,
              ),
            ),

            Container(
              height: 300,
              margin: EdgeInsets.only(left: 16,right: 16),
              child: Card(
                child: ListRevenueData(),
              )
            ),

          ],
        ),
      ),
    );
  }
}

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleBarChart(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory SimpleBarChart.withSampleData() {
    return new SimpleBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

}

/// Sample ordinal data type.
class OrdinalSales {
  final String month;
  final int sales;

  OrdinalSales(this.month, this.sales);
}

List<charts.Series<OrdinalSales, String>> _createSampleData() {
  final data = [
    new OrdinalSales('Jan', 5),
    new OrdinalSales('Feb', 25),
    new OrdinalSales('Mar', 100),
    new OrdinalSales('Apr', 75),
    new OrdinalSales('May', 23),
    new OrdinalSales('Jun', 77),
    new OrdinalSales('Jul', 34),
    new OrdinalSales('Aug', 99),
    new OrdinalSales('Sep', 45),
    new OrdinalSales('Oct', 65),
    new OrdinalSales('Nov', 32),
    new OrdinalSales('Dec', 15),
  ];

  return [
    new charts.Series<OrdinalSales, String>(
      id: 'Sales',
      colorFn: (_, __) => charts.MaterialPalette.deepOrange.shadeDefault,
      domainFn: (OrdinalSales sales, _) => sales.month,
      measureFn: (OrdinalSales sales, _) => sales.sales,
      data: data,
    )
  ];
}

