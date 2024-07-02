import 'package:castle/components/models/shoe.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Shoe shoe;
   CartItem({super.key,required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.shoe.imagePath),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.price),
    );
  }
}