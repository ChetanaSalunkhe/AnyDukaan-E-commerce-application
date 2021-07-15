import 'package:flutter/cupertino.dart';
import 'package:group_radio_button/group_radio_button.dart';

class RadioGroupDesign extends StatefulWidget{
  String verticalGroupValue="";
  List<String> status;
  Axis direction;
  RadioGroupDesign({Key key,this.verticalGroupValue,this.status,this.direction}):super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RadioGroupDesign_(verticalGroupValue: verticalGroupValue,status:status,direction: direction);
  }

}

class RadioGroupDesign_ extends State{
  String verticalGroupValue="";
  List<String> status;
  Axis direction;
  RadioGroupDesign_({Key key,this.verticalGroupValue,this.status,this.direction});

  @override
  Widget build(BuildContext context) {
    return  RadioGroup<String>.builder(
      direction: direction,
      groupValue: verticalGroupValue,
      onChanged: (value) => setState(() {
        verticalGroupValue = value;
      }),
      items: status,
      itemBuilder: (item) => RadioButtonBuilder(item,
      ),
    );
  }

}