import 'package:flutter/material.dart';
import 'package:provideandcamera/models/item.dart';

class ItemProvider with ChangeNotifier {
  List<Item> items = [
    Item("Didi Petet"),
    Item("Ayan"),
    Item("Rahmat"),
    Item("Mulyadi")
  ];

  int _selectedIndex = -1;

  int get selectedIndex => _selectedIndex;

  void selectItem(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
