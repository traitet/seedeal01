import 'package:flutter/material.dart';
import 'package:seedeal01/screens/SearchFlightHotelPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Main Menu'),
        ),
        body: ListView(
          children: <Widget>[
            buildBuildBody1(),
            buildBuildBody2(),      
            Text('Something extra for your trip?', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),                  
          ],
  
          
          ) ,

      ),
    );
  }
  

//================================================================
// MAIN MENU
//================================================================

  buildBuildBody1() => Container(
    height: 100,
    color: Colors.pink,
    child: Row(
          // crossAxisAlignment: CrossAxisAlignment.stretch,  
          mainAxisAlignment: MainAxisAlignment.end,             
          children: <Widget>[
            Expanded(
              child: 
            
            Card(color: Colors.pink,child : Container(
              child: InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SearchFlightHotelPage()),);},
                child: Column(children: <Widget>[Container(height: 60, child: Icon(Icons.home)),Text('Flight + Hotel',style: TextStyle(color: Colors.white),),],),
              )
            ),)),
            Expanded(child: Card(color: Colors.pink,child : Column(children: <Widget>[Container(height: 60, child: Icon(Icons.hotel)),Text('Hotel',style: TextStyle(color: Colors.white),),],),)),   
            Expanded(child: Card(color: Colors.pink,child : Column(children: <Widget>[Container(height: 60, child: Icon(Icons.flight)),Text('Flight',style: TextStyle(color: Colors.white),),],),)),                                           
            ],

            
        ),
  );

//================================================================
// TOP DEAL
//================================================================
    buildBuildBody2() => Container(
    padding: EdgeInsets.all(8),
    height: 250,
    color: Colors.white,       
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(padding: EdgeInsets.only(bottom: 8), child: Text('Top Deals', style: TextStyle(fontSize: 15),)),
        Expanded(child: ListView(
          scrollDirection: Axis.horizontal,
            children: <Widget>[
              Card(child: Column(children: <Widget>[Icon(Icons.access_alarms),Text('Flight + Hotel'),],),),
              Card(child: Column(children: <Widget>[Icon(Icons.access_alarms),Text('Flight'),],),),
              Card(child: Column(children: <Widget>[Icon(Icons.access_alarms),Text('Hotel'),],),),                        
            ],
        ),)
          
          
      ],
    )
    
    
  );
}
