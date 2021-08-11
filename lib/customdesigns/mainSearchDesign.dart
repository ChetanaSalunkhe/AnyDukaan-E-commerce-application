import 'package:anydukaan/customdesigns/myCustomAppBar2.dart';
import 'package:anydukaan/valueresources/customColors.dart';
import 'package:anydukaan/valueresources/customStrings.dart';
import 'package:anydukaan/valueresources/customStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> entries = <String>["Milk","Milk Products","Milkshake",];
final List<String> subentries = <String>["In Products","In Products","In Restaurants",];

class MainSearchDesign extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithSearch(title: CustomString.srchItems,searchHint: 'Milk',isLeadingVisible:true,isActionVisible:false,img: 'assets/audio_search.png'),
      body: SingleChildScrollView(
        child: Container(
          height: 500,
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                height: 400,
                child: ListCard(entries:entries,subentries:subentries),
              )
            ],
          )
        )
      )
    );
  }
}

class ListCard extends StatefulWidget{
  List<String> entries;
  List<String> subentries;
  ListCard({Key key,this.entries,this.subentries}):super(key:key);

  @override
  State<StatefulWidget> createState() {
    return ListView_productsCard(entries: entries,subentries:subentries);
  }

}

class ListView_productsCard extends State{

  List<String> entries;
  List<String> subentries;
  ListView_productsCard({Key key,this.entries,this.subentries});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: entries.length,
        itemBuilder: (BuildContext context,int index){
          return InkWell(
              onTap: (){
              },
              child:Container(
                  child: Card(
                    margin: EdgeInsets.only(left: 16,right: 16,top: 3),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16,right: 16,top: 6,bottom: 6),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 9,
                            fit: FlexFit.tight,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(entries[index].toString(),style: CustomStyle.blackBoldlCust_14,),
                                SizedBox(height: 6,),
                                Text(subentries[index].toString(),style: CustomStyle.subTitle,),
                              ],
                            ),),

                          Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: IconButton(
                                  alignment: Alignment.centerRight,
                                  icon: CustomStyle.getImageIcons('assets/next.png',16,CustomColors.colorPrimaryOrange),
                                  onPressed: (){

                                  })),
                        ],
                      ),
                    ),
                  )
              ),
          );
        }
    );
  }

}