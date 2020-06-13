//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:seedeal01/widgets/ButtonBarWidget.dart';
import 'package:seedeal01/widgets/DatePickerWidget.dart';
import 'package:seedeal01/widgets/DropdownBarWidget.dart';


//==========================================================================
// MAIN CLASS
//==========================================================================
class SearchDealFlightHotelPage extends StatefulWidget {
  @override
  _SearchDealFlightHotelPageState createState() => _SearchDealFlightHotelPageState();
}

//==========================================================================
// STATE CLASS
//==========================================================================
class _SearchDealFlightHotelPageState extends State<SearchDealFlightHotelPage> {
  @override
  Widget build(BuildContext context) {
    // const padding = 15.0;
    // const paddingTop = 45.0;
    FlutterStatusbarcolor.setStatusBarColor(Theme.of(context).primaryColor);
    return MaterialApp(
//==========================================================================
// SHOW DEBUG
//==========================================================================
      debugShowCheckedModeBanner: false,
//==========================================================================
// THEME
//==========================================================================
      theme: ThemeData(
        primarySwatch: Theme.of(context).primaryColor,
      ),
//==========================================================================
// HOME: DEFAULT TAB CONTROLLER
//==========================================================================
      home: DefaultTabController(
//==========================================================================
// NUMBER OF TAB
//==========================================================================

        length: choices.length,
        child: Scaffold(
//==========================================================================
//APPBAR
//==========================================================================
          appBar: AppBar(
            title: Text('Search Top Deal: Flight + Hotel'),
//==========================================================================
// APPBAR: BOTTOM
//==========================================================================
            bottom: TabBar(
              // isScrollable: true,
              tabs: choices.map((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
//==========================================================================
// SCAFFOLD: BODY
//==========================================================================
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Container(
                color: Colors.black87,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ChoiceCard(choice: choice),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

//==========================================================================
// CLASS CHOICE
//==========================================================================
class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Flight + Hotel', icon: Icons.hotel),
  const Choice(title: 'Train', icon: Icons.train),
];

//==========================================================================
// CLASS: CLOICECARD
//==========================================================================
class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;
//==========================================================================
// BUILD WIDGET
//==========================================================================
  @override
  Widget build(BuildContext context) {
    //final TextStyle textStyle1 = Theme.of(context).textTheme.bodyText1;
    final textStyle1 = TextStyle(color: Colors.white,fontSize: 16);
//==========================================================================
// CARD
//==========================================================================
    return Column(
      children: <Widget>[
//==========================================================================
// RETURN/ONEWAY
//==========================================================================
        Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                
//==========================================================================
// DROPDOWN: FROM
//==========================================================================
                Text('From', style: textStyle1),
                DropdownBarWidget(hintIcon: Icons.tram, hintText: 'From'),
                SizedBox(height: 4),
//==========================================================================
// DROPDOWN: TO
//==========================================================================
                Text('To', style: textStyle1),
                DropdownBarWidget(hintIcon: Icons.tram, hintText: 'To'),
//==========================================================================
// DATAPICKER WIDGET
//==========================================================================  
              
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(flex:1,child: DatePickerWidget()),
                      DatePickerWidget(),   
                    ],
                  ),
                ),
              


//==========================================================================
// DROPDOWN: NO GUESTS 
//==========================================================================
                DropdownBarWidget(hintIcon: Icons.person,hintText: '2 adults, 1 room',dropdownColor: Colors.grey),
//==========================================================================
// DROPDOWN: CLASS
//==========================================================================                
                DropdownBarWidget(hintIcon: Icons.airline_seat_recline_normal,hintText: 'any class',dropdownColor: Colors.grey),
                SizedBox(height: 16),
//==========================================================================
// EXPANDED
//==========================================================================
        //Expanded(child: Container()),                
//==========================================================================
// BUTTON
//==========================================================================
        SizedBox(
          width: double.infinity,
          child: ButtonBarWidget(
            onPressed: () {},
            splashColor: Colors.pink,
            text: "Find",
          ),
        )                
              ],
            )),


      ],
    );

    // Card(
    //   color: Colors.white,
    //   child: Center(
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: <Widget>[
    //         Icon(choice.icon, size: 128.0, color: textStyle.color),
    //         Text(choice.title, style: textStyle),
    //       ],
    //     ),
    //   ),
    // );
  }
}
