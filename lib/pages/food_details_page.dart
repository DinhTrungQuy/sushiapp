// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sushiapp/model/food.dart';

class FoodDetailPage extends StatefulWidget {
  final Food food;
  const FoodDetailPage({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[900],
        elevation: 0,
        title: const Text('food'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    widget.food.imagePath,
                    height: 300,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.food.name,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(Icons.star),
                Text(widget.food.rating),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'nunc leo fermentum dolor, sed fermentum metus libero nec erat. '
              'Sed euismod, diam sit amet dictum aliquam, '
              'nunc leo fermentum dolor, sed fermentum metus libero nec erat. '
              'Sed euismod, diam sit amet dictum aliquam, '
              'nunc leo fermentum dolor, sed fermentum metus libero nec erat. ',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.grey[100],
            //     borderRadius: BorderRadius.circular(20),
            //   ),
            //   child: Text('\$${widget.food.prince}'),
            // )
          ],
        ),
      ),
    );
  }
}
