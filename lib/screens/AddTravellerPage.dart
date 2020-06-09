//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';
import 'package:seedeal01/widgets/ButtonBarWidget.dart';
import 'package:seedeal01/widgets/TextFieldWidget.dart';

//==========================================================================
// MAIN CLASS
//==========================================================================
class AddTravellerPage extends StatefulWidget {
  @override
  _AddTravellerPageState createState() => _AddTravellerPageState();
}

//==========================================================================
// STATE CLASS
//==========================================================================
class _AddTravellerPageState extends State<AddTravellerPage> {
  @override
  Widget build(BuildContext context) {
    const padding = 15.0;
    const paddingTop = 20.0;
    return MaterialApp(
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
        // backgroundColor: Colors.white,

        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Add Traveller'),
        ),
//==========================================================================
// BODY
//==========================================================================
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                SizedBox(height: paddingTop),

//==========================================================================
// TEXT: WELCOME
//==========================================================================

                Text('Personal Details',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                TextFieldWidget(text: '*Name', icon: Icons.credit_card),
                TextFieldWidget(
                    text: '*Surname', icon: Icons.format_list_numbered),

                TextFieldWidget(
                    text: '*Expiration Datess', icon: Icons.data_usage),
//==========================================================================
// RADIO: GENDER
//==========================================================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Male'),
                    Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: null,
                    ),
                    Text('Female'),
                    Radio(
                      value: 2,
                      groupValue: 0,
                      onChanged: null,
                    ),
                  ],
                ),
//==========================================================================
// DROPDOWN: NATIONALITY
//==========================================================================
                TextFieldWidget(text: '*Nationality', icon: Icons.people),
//==========================================================================
// TEXT: CONTACT DEAIL
//==========================================================================
                Text('Contact Details test',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
//==========================================================================
// TEXTFIELD
//==========================================================================
                TextFieldWidget(text: '*E-mail', icon: Icons.email),
                TextFieldWidget(text: '*Tel', icon: Icons.phone),
//==========================================================================
// TEXT
//==========================================================================
                Text(
                    'For bookings confirmation and in the case of an emergency',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),

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
