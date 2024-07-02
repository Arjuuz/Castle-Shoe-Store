import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale

  List<Shoe> shoeshop=[
    Shoe(name: 'New Balance 650', price: '13499', imagePath: 'lib/images/Newbalance650.png', description: 'The store offers mens shoes imported with perfect quality'),
    Shoe(name: 'Nike Blazer Mid 77', price: '7597', imagePath:'lib/images/NikeBlazerMid77.png' , description:'The store offers mens shoes imported with perfect qualityr' ),
     Shoe(name: 'Air Jordan', price: '11495', imagePath:'lib/images/NIkeairjordan.png' , description:'The store offers mens shoes imported with perfect quality' ),
    Shoe(name: 'Converse AS1 Pro', price: '7912', imagePath:'lib/images/ConverseAS1Pro.png' , description:'The store offers mens shoes imported with perfect quality ' ),
    Shoe(name: 'Addidas', price: '6599', imagePath:'lib/images/Addidas.png' , description:'The store offers mens shoes imported with perfect quality ' ),
    Shoe(name: 'Converse Pro Blaze', price: '10599', imagePath:'lib/images/ConverseProBlaze.png' , description:'The store offers mens shoes imported with perfect quality ' ),
     Shoe(name: 'New Balance BB550', price: '14740', imagePath:'lib/images/NewBalanceBB550.png' , description:'The store offers mens shoes imported with perfect quality ' ),
    Shoe(name: 'Nike Dunk', price: '11669', imagePath:'lib/images/nikedunk.png' , description:'The store offers mens shoes imported with perfect quality ' ),
    Shoe(name: 'New Balance306', price: '8669', imagePath:'lib/images/NewBalance306.png' , description:'The store offers mens shoes imported with perfect quality ' ),
    Shoe(name: 'Nike Air MonarchI', price: '10069', imagePath:'lib/images/NikeAirMonarchI.png' , description:'The store offers mens shoes imported with perfect quality ' ),
    Shoe(name: 'Nike Air force', price: '15769', imagePath:'lib/images/NikeAirforce.png' , description:'The store offers mens shoes imported with perfect quality ' ),
    


  ];
  //list of items in user cart
   List<Shoe> userCart=[];
  //get list of items for sale
  List<Shoe>getShoeList(){
    return shoeshop;
  }

  //get cart
 List<Shoe> getUserCart(){
  return userCart;
 }
  //adding item to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  //remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }


}