//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';
// import 'package:seedeal01/widgets/ButtonBarWidget.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:seedeal01/widgets/LVHoriSearchDealWidget.dart';

//==========================================================================
// MAIN CLASS
//==========================================================================
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//==========================================================================
// STATE CLASS
//==========================================================================
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // const padding = 15.0;

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
// HOME
//==========================================================================
        home: Scaffold(
            // appBar: AppBar(
            //   title: Text('Login'),
            // ),
//==========================================================================
// BUTTOM NAVIGATION BAR
// www.willowtreeapps.com/ideas/how-to-use-flutter-to-build-an-app-with-bottom-navigation
//==========================================================================
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text('Home')),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business_center),
                  title: Text('Booking'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text('My Profile')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz), title: Text('More')),
              ],
            ),
//==========================================================================
// BODY
//==========================================================================
            body: ListView(
              children: <Widget>[
//==========================================================================
// IMAGE
//==========================================================================
                Image(image: AssetImage('assets/images/tophome.JPG')),
//==========================================================================
// TAB BAR
//==========================================================================
                Container(
                  height: 80,
                  color: Colors.pink,
                  child: DefaultTabController(
                    length: choices.length,
                    child: TabBar(
                      tabs: choices.map((Choice choice) {
                        return Tab(
                          text: choice.title,
                          icon: Icon(choice.icon),
                        );
                      }).toList(),
                    ),
                  ),
                ),
//==========================================================================
// TOP DEAL
//==========================================================================
      Padding(
        padding: const EdgeInsets.only(right: 8,left: 8, top: 8, bottom: 4),
        child: Text('Top Deals',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),), 
      ),
//==========================================================================
// LIST VIEW HORIZONAL
//==========================================================================   
      LVHoriSearchDealWidget(), 
//==========================================================================
// TOP DEAL
//==========================================================================
      Padding(
        padding: const EdgeInsets.only(right: 8,left: 8, top: 8, bottom: 4),
        child: Text('Something extra for your trip?',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),), 
      ),
 //==========================================================================
// IMAGE
//==========================================================================           
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image(image: AssetImage('assets/images/lady.JPG')),
      ),
//==========================================================================
// WIDGET
//==========================================================================
            ],
            )));
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

//==========================================================================
// CLASS CHOICE
//==========================================================================
const List<Choice> choices = const <Choice>[
  Choice(title: 'Flight + Hotel', icon: Icons.hotel),
  Choice(title: 'Hotels', icon: Icons.hotel),
  Choice(title: 'Flights', icon: Icons.flight),
];
