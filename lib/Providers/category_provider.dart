import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier{
  int _selected = 0;
  int get selected => _selected;

  void getIndex(int index){
    _selected = index;
    notifyListeners();
  }

}