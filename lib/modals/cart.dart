import 'package:flutter/foundation.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
//   list of shoes for salg
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Vapor MAX',
        price: '236',
        imagePath: 'lib/images/shoe2.png',
        description:
            'The Nike Air VaporMax Plus looks to the past'),
    Shoe(
        name: 'Metcon 9',
        price: '150',
        description:
            'Whatever your "why" is for working out,  ',
        imagePath: 'lib/images/shoe3.png'),
    Shoe(
        name: 'Adidas SS',
        price: '250',
        description:
            'Adidas Stan Smith is a tennis shoe made  ',
        imagePath: 'lib/images/shoe4.png'),
    Shoe(
        name: 'KD17',
        price: '150',
        description:
            'While Kevin Durant’s all-timer status',
        imagePath: 'lib/images/shoe5.png')
  ];
// list of items in user cart
  List<Shoe> userCart = [];
// get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

// get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

// add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
