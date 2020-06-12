//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

//==========================================================================
// MAIN CLASS
//==========================================================================
class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

//==========================================================================
// STATE CLASS
//==========================================================================
class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
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
          currentIndex: 2,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text('Booking'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('My Profile'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), title: Text('More')),
          ],
        ),
//==========================================================================
// BODY
//==========================================================================
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
//==========================================================================
// IMAGE
//==========================================================================
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/nueng.png'),
                          )),
                    ),
                    SizedBox(width: 15),
//==========================================================================
// COLUMN: TEXTS
//==========================================================================
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Hi there!'),
                        Text('Traitet Thepbandansuk',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30),


//==========================================================================
// LIST TILE & TEXT: MY PERFERENCE
//==========================================================================
    Text('My Preferences',style: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.bold)),
    SizedBox(height: 5),    
    ListTile(trailing: Icon(Icons.flight),title: Text('Payment Method'),),  
    ListTile(trailing: Icon(Icons.card_travel),title: Text('Travel Buddy'),),   
    SizedBox(height: 15),   
//==========================================================================
// LIST TILE & TEXT: ACCOUNT SETTING
//==========================================================================              
    Text('Account Settings',style: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.bold)),     
    SizedBox(height: 5),        
    ListTile(trailing: Icon(Icons.person),title: Text('Personal Details & Password'),),  
    ListTile(trailing: Icon(Icons.exit_to_app),title: Text('Logout'),),         
    


              ],

//==========================================================================
// LISTTILE
//==========================================================================


            ),
          ),
        ),
      ),
    );
  }
}
