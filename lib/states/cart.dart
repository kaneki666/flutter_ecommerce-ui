import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/home/components/image_data.dart';

class CartModel extends ChangeNotifier {
  int cartItem = 0;

  /// Internal, private state of the cart. Stores the ids of each item.
  List<ImageData> allItems = [];

  int get getCartItem {
    return cartItem;
  }

  List get getCartItems {
    return allItems;
  }

  void add(ImageData item) {
    var found = allItems.where((element) => element.id == item.id);
    if (found.isEmpty) {
      cartItem += 1;
      allItems.add(item);
    } else {
      ImageData found = allItems.firstWhere((element) => element.id == item.id);
      found.quantity += 1;
      cartItem += 1;
    }
    notifyListeners();
  }

  void remove(ImageData item) {
    ImageData found = allItems.firstWhere((element) => element.id == item.id);
    if (found.quantity == 1) {
      allItems.remove(item);
      cartItem -= 1;
    } else {
      if (found.quantity > 1) {
        found.quantity -= 1;
        cartItem -= 1;
      }
    }
    notifyListeners();
  }

  void removeItem(ImageData item) {
    ImageData found = allItems.firstWhere((element) => element.id == item.id);
    cartItem = cartItem - found.quantity;
    item.quantity = 1;
    allItems.removeWhere((element) => element.id == item.id);

    notifyListeners();
  }
}
