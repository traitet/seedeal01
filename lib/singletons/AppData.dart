
//==========================================================================
// CLASS APP DATA
//==========================================================================
class AppData {
//==========================================================================
// DECLARE VARIABLE
//==========================================================================  
  static final AppData _appData = new AppData._internal();
//==========================================================================
// SHARED VARIABLE
//==========================================================================
  String text;
//==========================================================================
// FACTORY APP DATA
//==========================================================================  
  factory AppData() {
    return _appData;
  }
  AppData._internal();
}
//==========================================================================
// APP DATA = APPDATA
//==========================================================================
final appData = AppData();


//==========================================================================
// HOW TO USE
// IMPORT: import '../singletons/AppData.dart';
// appData.text = myText; OR textController.text = appData.text;
//==========================================================================