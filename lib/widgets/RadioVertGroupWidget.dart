//==========================================================================
// IMPORT MATERIAL
//==========================================================================
import 'package:flutter/material.dart';
import 'package:seedeal01/models/AppConfigModel.dart';

//==========================================================================
// MAIN CLASS
//==========================================================================
class RadioVertGroup extends StatefulWidget {
  @override
  RadioVertGroupWidget createState() => RadioVertGroupWidget();
}

//==========================================================================
// STATE WIDGET
//==========================================================================
class RadioVertGroupWidget extends State {
//==========================================================================
// DEFAULT VARIABLE
//==========================================================================
  int value = 1;
  List<ItemList> itemList = [
    ItemList(
      index: 1,
      name: "Male",
    ),
    ItemList(
      index: 2,
      name: "Female",
    ),
  ];

//==========================================================================
// BUILD WIDGET
//==========================================================================
  build(BuildContext context) {
    return Column(
      children:
//==========================================================================
// LOOP TO SHOW IN COLUMN
//==========================================================================
          itemList.map((data) => 
            RadioListTile(
              groupValue: value,
              value: data.index,
              title: Text("${data.name}",style: AppConfigModel().textStyleM,),
              onChanged: (val) {setState(() {value = data.index;});},
            )
                ).toList(),
    );
  }
}

//==========================================================================
// MODEL: ITEM LIST
//==========================================================================
class ItemList {
  String name;
  int index;
  ItemList({this.name, this.index});
}
