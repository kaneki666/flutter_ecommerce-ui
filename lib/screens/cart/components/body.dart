import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/cart/components/cart_card.dart';

class CartBody extends StatelessWidget {
  final List items;
  const CartBody({required this.items});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return CartCard(items: items[index]);
        },
      ),
    );
  }
}
