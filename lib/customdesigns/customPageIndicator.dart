/*image indicator*/
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class AdvPages extends StatefulWidget{
  double width;
  double height;
  String iName;
  double boxHeight;
  List<List<String>> entries;
  AdvPages({Key key,this.iName,this.width,this.height,this.boxHeight,this.entries}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AdvPagesView(iName: iName,width: width,height: height,boxHeight: boxHeight,entries: entries);
  }

}

class AdvPagesView extends State{
  double width;
  double height;
  String iName;
  double boxHeight;
  List<List<String>> entries;
  AdvPagesView({Key key,this.iName,this.width,this.height,this.boxHeight,this.entries});

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
      //padding: EdgeInsets.only(left: 16,right: 16),
      child: PageView.builder(
          itemCount: entries.length,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return Center(
                child:Column(
                  children: [
                    entries.length>0?
                    Image.asset(entries[index].first,width:width,height: height,fit: BoxFit.fill,):
                    Image.asset('$iName',width:width,height: height,fit: BoxFit.fill,),
                    Visibility(
                      visible: entries[index].length>1?true:false,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 12,),
                          Text(entries[index].length>1?entries[index].elementAt(1):'',style: CustomStyle.blackBoldCust_18,
                            softWrap: true,overflow: TextOverflow.fade,textAlign: TextAlign.center,),
                          SizedBox(height: 12,),
                          Text(entries[index].length>1?entries[index].elementAt(2):'',style: CustomStyle.blackNormalCust_14,
                            softWrap: true,overflow: TextOverflow.fade,textAlign: TextAlign.center,maxLines: 3,),
                        ],
                      )
                    ),
                  ],
                ),
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