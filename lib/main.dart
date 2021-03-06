//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';
import 'package:seedeal01/screens/AddTravellerPage.dart';
import 'package:seedeal01/screens/PersonalDetailPage.dart';
import 'package:seedeal01/screens/EditPaymentMethodPage.dart';
import 'package:seedeal01/screens/HomePage.dart';
import 'package:seedeal01/screens/ManageBookingPage.dart';
import 'package:seedeal01/screens/MenuPage.dart';
import 'package:seedeal01/screens/MyBookingPage.dart';
import 'package:seedeal01/screens/MyProfilePage.dart';
import 'package:seedeal01/screens/SampleTabbarPage.dart';
import 'package:seedeal01/screens/SearchDealFlightHotelPage.dart';
import 'package:seedeal01/screens/SearchDealHotelPage.dart';
import 'package:seedeal01/screens/SearchDealTrainPage.dart';
import 'package:seedeal01/screens/SearchFlightHotelPage.dart';
import 'package:seedeal01/screens/SearchHotelPage.dart';
import 'package:seedeal01/screens/SignUpPage.dart';
import 'package:seedeal01/screens/TravelBuddiesPage.dart';
import 'package:seedeal01/screens/loginPage.dart';
import 'package:seedeal01/screens/HotelDetailPage.dart';
import 'package:seedeal01/screens/MorePage.dart';

//==========================================================================
// MAIN: RUNAPP
//==========================================================================
void main() {
  runApp(MyApp());
}
//==========================================================================
// MAIN CLASS
//==========================================================================
class MyApp extends StatelessWidget {
//==========================================================================
// BUILD: CONTEXT
//==========================================================================
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//==========================================================================
// SHOW DEBUG
//==========================================================================
      debugShowCheckedModeBanner: false,       
//==========================================================================
// TITLE
//==========================================================================      
      title: 'SeeDel Demo V.0.1',
//==========================================================================
// APP TEAM
//==========================================================================      
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),

      ),
//==========================================================================
// HOME
//==========================================================================      
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
//==========================================================================
// STATE CLASS
//==========================================================================
class MyHomePage extends StatefulWidget {
//==========================================================================
// CONSTUCTURE
//==========================================================================  
  MyHomePage({Key key, this.title}) : super(key: key);
//==========================================================================
// PARAMETER
//==========================================================================
  final String title;
//==========================================================================
// OVERRIDE STATE
//==========================================================================  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//==========================================================================
// BUILD
//==========================================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//==========================================================================
// APP BAR
//==========================================================================      
      appBar: AppBar(
        title: Text(widget.title),
      ),
//==========================================================================
// BODY
//==========================================================================      
      body: Center(
//==========================================================================
// LISTVIEW
//==========================================================================
        child: ListView(

          children: <Widget>[
//==========================================================================
// RAISED BUTTON
//========================================================================== 
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()),);}, child: Text('Sign Up'),),     
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);}, child: Text('Login'),),      
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);}, child: Text('Home Page'),),  
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SearchHotelPage()),);}, child: Text('Search Hotel'),),      
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SearchFlightHotelPage()),);}, child: Text('Search Flight Hotel'),),    
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TravelBuddiesPage()),);}, child: Text('Travel Budies'),), 
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AddTravellerPage()),);}, child: Text('Add Traveller'),),    
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalDetailPage()),);}, child: Text('Personal Detail'),),                
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => EditPaymentMethodPage()),);}, child: Text('Edit Payment Method'),),                                  
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HotelDetailPage()),);}, child: Text('Hotel Detail'),),                                             
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDealHotelPage()),);}, child: Text('Search Deal: Hotel'),),                  
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDealFlightHotelPage()),);}, child: Text('Search Deal: Flight + Hotel'),),                    
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDealTrainPage()),);}, child: Text('Search Deal: Train'),),               
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()),);}, child: Text('Side Menu'),),  
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MorePage()),);}, child: Text('More Page'),),              
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfilePage()),);}, child: Text('My Profile'),),   
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyBookingPage()),);}, child: Text('My Booking'),),   
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ManageBookingPage()),);}, child: Text('Manage Booking'),),    
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SampleTabbarPage()),);}, child: Text('Sample Tab bar Page'),),              
          ],
        ),
      ),
    );
  }
}
