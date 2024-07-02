import 'package:castle/components/models/cart.dart';
import 'package:castle/components/models/shoe.dart';
import 'package:castle/pages/shoe_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //adding shoe to cart method

  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);

    //alert the user ,successfulyy add to the cart

    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Successfully Added !'),
      content: Text('Check Your Cart'),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        //search bar
       Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(8)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("search",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),),
            Icon(Icons.search,color: Colors.grey,)
          ],
        ),
        
       ),
      //message
      Padding(
         padding: const EdgeInsets.symmetric(vertical: 25.0),
         child: Text('Everyone flies.. Some fly longer than others!',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w400),),
       ),
      //shoe pics
      // ignore: prefer_const_constructors
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Hot Pics🔥',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            Text('See All',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
          ],
        ),
      ),

//list of shoes for sale
      const SizedBox(height: 10,),
      Expanded(
        child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 11,
        itemBuilder: (context, index) {
        //create a shoe

        Shoe shoe=value.getShoeList()[index];
           //get a shoe from shop list
        return  ShoeTile(
          shoe:shoe,
          onTap: () => addShoeToCart(shoe),

        );
      },
      ),

      ),

      const Padding(
        padding: EdgeInsets.only(top: 25.0,left: 25,right: 25),
        child: Divider(color: Colors.transparent,),
      )

      ],
    ),
    );
  }
}