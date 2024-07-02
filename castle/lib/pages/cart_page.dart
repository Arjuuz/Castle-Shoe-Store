import 'package:castle/components/cart_item.dart';
import 'package:castle/components/models/cart.dart';
import 'package:castle/components/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CartNav  extends StatelessWidget {
  const CartNav ({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) => 
     Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
           // heading
              const Text(
                'My Cart',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(child: ListView.builder(
                 itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                //get individual shoe
                Shoe individualShoe=value.getUserCart()[index];
                //return the cart item
                return CartItem(shoe:individualShoe);

              },
              ),
              ),
        ],
      ),
    ),
     );
  }
}