import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<List<dynamic>> _shopItems = [
    ["Avacado", "4.0", "assets/avacadoicon.webp", Colors.green],
    ["Banana", "2.5", "assets/banana.webp", Colors.yellow],
    ["Chicken", "12.0", "assets/chicken.webp", Colors.brown],
    ["Water", "1.0", "assets/water.webp", Colors.blue],
  ];

  final List<List<dynamic>> _cartItems=[];

  List<List<dynamic>> get cartItems => _cartItems;

  List<List<dynamic>> get shopItems => _shopItems;

  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItem(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String totalAmount(){
    double sum=0;
    for(int i=0;i<_cartItems.length;i++){
      sum+=double.parse(_cartItems[i][1]);
    }

    return sum.toStringAsFixed(2);
  }


}