/*image indicator*/
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class AdvPages extends StatefulWidget{
  double width;
  double height;
  String iName;
  double boxHeight;
  AdvPages({Key key,this.iName,this.width,this.height,this.boxHeight}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AdvPagesView(iName: iName,width: width,height: height,boxHeight: boxHeight);
  }

}

class AdvPagesView extends State{
  double width;
  double height;
  String iName;
  double boxHeight;
  AdvPagesView({Key key,this.iName,this.width,this.height,this.boxHeight});

  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  //final _boxHeight = 150.0;

  final _items = [
    Colors.blue,
    Colors.orange,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildPageView(),
          _buildCircleIndicator(),
        ],
      ),

    );
  }

  _buildPageView() {
    return Container(
      color: Colors.transparent,
      height: boxHeight,
      child: PageView.builder(
          itemCount: _items.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return Center(
                child:
                Image.asset('$iName',width:width,height: height,fit: BoxFit.fill,)
              //Image.asset("assets/bannerimg2.png",width:360,height: 150,fit: BoxFit.fill,)  //grocery banner
                //Image.asset("assets/restbanner.png",width:360,height: 150,fit: BoxFit.fill,)  //restaurant banner
            );
          },
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          }),
    );
  }
  _buildCircleIndicator() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: _items.length,
          currentPageNotifier: _currentPageNotifier,
          dotColor: CustomColors.grey_subtitle,
          selectedDotColor: CustomColors.colorPrimaryOrange,
        ),
      ),
    );
  }

  _buildCircleIndicator2() {
    return CirclePageIndicator(
      size: 16.0,
      selectedSize: 18.0,
      itemCount: _items.length,
      currentPageNotifier: _currentPageNotifier,
    );
  }

  _buildCircleIndicator3() {
    return CirclePageIndicator(
      selectedDotColor: Colors.green,
      itemCount: _items.length,
      currentPageNotifier: _currentPageNotifier,
    );
  }

}