//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:seedeal01/widgets/ButtonBarWidget.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

//==========================================================================
// MAIN CLASS
//==========================================================================
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

//==========================================================================
// STATE CLASS
//==========================================================================
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    const padding = 15.0;
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
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
        

        // appBar: AppBar(
        //   title: Text('Login'),
        // ),
//==========================================================================
// BODY
//==========================================================================
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: <Widget>[
      
//==========================================================================
// TEXT: WELCOME
//==========================================================================
Image(image: AssetImage('assets/images/welcome.JPG')),

//==========================================================================
// TEXT: JOIN US
//==========================================================================                
                Center(
                    child: Text('Join us now to discover our hot deals!',
                        style: TextStyle(fontSize: 18))),
                SizedBox(height: padding),                        
//==========================================================================
// TEXT: LOGIN
//==========================================================================                        
                Center(
                    child: Text(
                  'Login',
                  style: TextStyle(fontSize: 15),
                )),
                SizedBox(height: padding),
//==========================================================================
// FACEBOOK BUTTON
//==========================================================================                
                FacebookSignInButton(onPressed: () {
                  // call authentication logic
                }),
                SizedBox(height: padding),
//==========================================================================
// GOOGLE BUTTON
//==========================================================================                
                GoogleSignInButton(
                  onPressed: () {/* ... */},
                  splashColor: Colors.white,
                  // setting splashColor to Colors.transparent will remove button ripple effect.
                ),
                SizedBox(height: padding),
//==========================================================================
// SIGN-IN BUTTON
//==========================================================================                
                ButtonBarWidget(
                  onPressed: () {},
                  splashColor: Colors.pink,
                  text: "Sign in",
                ),
                SizedBox(height: padding),
                SizedBox(height: padding),
//==========================================================================
// TEXT
//==========================================================================                     
                Center(
                    child: Text(
                  "Haven't got an account?",
                  style: TextStyle(fontSize: 15),
                )),
                SizedBox(height: padding),
//==========================================================================
// CREATE ACCOUNT BUTTON
//==========================================================================                
                FlatButton(
                  onPressed: () {},
                  child: Text('Create an Account',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blue[800])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
