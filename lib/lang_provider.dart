import 'package:flutter/cupertino.dart';

class LangProvider extends ChangeNotifier{
  bool _isItemSelected = false;

  void isItemSelected(value) {
    _isItemSelected = value;
    notifyListeners();
  }

  bool getItemSelected(){
    return _isItemSelected;
  }
  void lanChanged(){
    notifyListeners();
  }


}