import 'package:flutter/material.dart';

class BottomNavigationBarProvider extends ChangeNotifier {
  int _index = 0;

  int get index => _index;

  void pageIndex(int newIndex) {
    _index = newIndex;

    notifyListeners();
  }
}
