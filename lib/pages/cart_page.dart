import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushiapp/model/cart.dart';
import 'package:sushiapp/model/food.dart';
import 'package:sushiapp/theme/colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ShoppingCart>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          title: const Text(
            'Cart',
          ),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
        ),
        backgroundColor: secondaryColor,
        body: ListView.builder(
          itemCount: value.customerCart.length,
          itemBuilder: (context, index) {
            Food food = value.customerCart[index];
            String foodName = food.name;
            String foodPrice = food.price;
            return Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 10),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                title: Text(
                  foodName,
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  foodPrice,
                  style: const TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  color: Colors.white,
                  onPressed: () {
                    value.removeFromCart(food);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
