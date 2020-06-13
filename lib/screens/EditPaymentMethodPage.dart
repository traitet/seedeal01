//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:seedeal01/widgets/ButtonBarWidget.dart';
import 'package:seedeal01/widgets/TextFieldWidget.dart';

//==========================================================================
// MAIN CLASS
//==========================================================================
class EditPaymentMethodPage extends StatefulWidget {
  @override
  _EditPaymentMethodPageState createState() => _EditPaymentMethodPageState();
}

//==========================================================================
// STATE CLASS
//==========================================================================
class _EditPaymentMethodPageState extends State<EditPaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    const padding = 15.0;
    const paddingTop = 60.0;
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
        backgroundColor: Colors.black,

        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Payment Method'),
        ),
//==========================================================================
// BODY
//==========================================================================
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                SizedBox(height: paddingTop),

//==========================================================================
// TEXT: WELCOME
//==========================================================================
                TextFieldWidget(text: '*Card Type', icon: Icons.credit_card),
                TextFieldWidget(text: '*Card Number', icon: Icons.format_list_numbered),
                TextFieldWidget(text: '*Expiration Date', icon: Icons.timer),                
                SizedBox(height: padding),
//==========================================================================
// SIGN-IN BUTTON
//==========================================================================
                ButtonBarWidget(
                  onPressed: () {},
                  splashColor: Colors.pink,
                  text: "Save",
                ),
                SizedBox(height: padding),
                SizedBox(height: padding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
