import 'package:flutter/material.dart';

class CardModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = [

    //[itemName, ItemPrice, ImagePath, Color]
    ["Avocado","4.00","lib/images/avocado.png", Colors.green],
    ["Banana","2.50","lib/images/banana.png", Colors.yellow],
    ["Chicken","12.00","lib/images/chicken.png", Colors.brown],
    ["Water","1.00","lib/images/water.png", Colors.blue]

  ];

  //list of cart items
  List _cartItems = [];



  get shopItems => _shopItems;
  get cartItems => _cartItems;

  //add items to cart

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal(){
    double totalPrice = 0;
    for( int i = 0; i < _cartItems.length; i ++ ){
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);

  }


}