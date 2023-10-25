import 'package:flutter/material.dart';

class addandsub with ChangeNotifier {
  int Quantity = 0;
  int price = 0;

  void addnew() {
    Quantity++;
    newprice();
    notifyListeners();
  }

  void newprice() {
    if (Quantity == 0) {
      price = 0;
    } else {
      price = price + 1000;
    }
  }

  void subnew() {
    Quantity--;
    newprice1();
    notifyListeners();
  }

  void newprice1() {
    if (Quantity == 0) {
      price = 0;
    } else {
      price = price - 1000;
    }
  }
}
