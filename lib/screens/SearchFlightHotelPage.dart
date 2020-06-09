import 'package:flutter/material.dart';

class SearchFlightHotelPage extends StatefulWidget {
  @override
  _SearchFlightHotelPageState createState() => _SearchFlightHotelPageState();
}

class _SearchFlightHotelPageState extends State<SearchFlightHotelPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flight and Hotel'),iconTheme: IconThemeData(color: Colors.black),),
        body: buildBody1(),
      ),
      
    );
  }

  buildBody1() => 
  Container(
    padding: EdgeInsets.all(8),
    child: Column(children: <Widget>[
      Container(alignment:Alignment.centerLeft,padding: EdgeInsets.all(9), child: Text('Leaving from')),    
      TextFormField(decoration: InputDecoration(labelText: 'Dparture Airport', prefixIcon: Icon(Icons.departure_board)),),
      Container(alignment:Alignment.centerLeft,padding: EdgeInsets.all(9), child: Text('Going to')),    
      TextFormField(decoration: InputDecoration(labelText: '', prefixIcon: Icon(Icons.departure_board)),),
      Row(children: <Widget>[
        Card(color: Colors.white,child : Container(
          height: 100, 
          width: 200,
          child: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SearchFlightHotelPage()),);},
            child: Column(children: <Widget>[
              Container(padding: EdgeInsets.only(left: 8,top: 15,bottom: 20),child: Text('Leaving on',style: TextStyle(color: Colors.pink, fontSize: 15),)),
              Container(child: Text('Tonight',style: TextStyle(color: Colors.grey, fontSize: 15),)),
            ])))),
          
          Expanded(child: Card(color: Colors.white,child : Container(
          height: 100, 
          width: 200,
          child: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SearchFlightHotelPage()),);},
            child: Column(children: <Widget>[
              Container(padding: EdgeInsets.only(left: 8,top: 15,bottom: 20),child: Text('Returning on',style: TextStyle(color: Colors.pink, fontSize: 15),)),
              Container(child: Text('Tonight',style: TextStyle(color: Colors.grey, fontSize: 15),)),
            ])))),
            ),
          
      ],),

            



    ],),
  );

}