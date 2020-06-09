//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';
import 'package:seedeal01/screens/EditPaymentMethodPage.dart';
import 'package:seedeal01/screens/ManageBookingPage.dart';
import 'package:seedeal01/screens/loginPage.dart';

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
// TITLE
//==========================================================================      
      title: 'Flutter Demo',
//==========================================================================
// APP TEAM
//==========================================================================      
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => EditPaymentMethodPage()),);}, child: Text('Edit Payment Method'),),   
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);}, child: Text('Login'),),                      
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ManageBookingPage()),);}, child: Text('Manage Booking'),),    
          ],
        ),
      ),
    );
  }
}