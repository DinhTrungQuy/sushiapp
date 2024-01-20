import 'package:flutter/material.dart';
import 'package:sushiapp/model/food.dart';

class ShoppingCart extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: 'Salmon Sushi',
      price: '21.00',
      imagePath: 'assets/images/1.webp',
      rating: '4.5',
    ),
    Food(
      name: 'Tuna',
      price: '25.00',
      imagePath: 'assets/images/2.webp',
      rating: '5',
    ),
    Food(
      name: 'Kimbap',
      price: '30.00',
      imagePath: 'assets/images/3.jpg',
      rating: '4',
    ),
  ];

  final List<Food> _customerCart = [];

  List<Food> get foodMenu => _foodMenu;
  List<Food> get customerCart => _customerCart;
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _customerCart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _customerCart.remove(food);
    notifyListeners();
  }
}
