import 'package:flutter/material.dart';

class Listprovider extends ChangeNotifier {
  List<int> list = [1, 2, 3, 4];

  void add() {
    int lastValue = list.last;
    list.add(lastValue + 1);
    notifyListeners();
  }
}
