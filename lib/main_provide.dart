import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainProvider extends ChangeNotifier {
  final bool _isItemSelected = false;
  int _selectedItemIndex = 0;

  void setItemIndex(value) {
    _selectedItemIndex = value;
  }

  setFavourite(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('fav_meal', index);
  }

  Future<int?> getFavourite(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('fav_meal')) {
      return prefs.getInt('fav_meal');
    }
    return null;
  }
}
