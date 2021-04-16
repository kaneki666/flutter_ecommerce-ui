import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/home/components/image_data.dart';
import 'package:learn_flutter/states/cart.dart';
import 'package:provider/provider.dart';

class CartCard extends StatelessWidget {
  final ImageData items;
  const CartCard({required this.items});

  void addCart(BuildContext context) {
    var cart = context.read<CartModel>();
    cart.add(items);
  }

  void removeCart(BuildContext context) {
    var cart = context.read<CartModel>();
    cart.remove(items);
  }

  void removeItemFromCart(BuildContext context) {
    var cart = context.read<CartModel>();
    cart.removeItem(items);
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 243, 243, 1),
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(
                '${items.imageUrl}',
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              top: -14,
              left: 65,
              child: IconButton(
                icon: const Icon(Icons.delete),
                color: Colors.redAccent[700],
                onPressed: () => removeItemFromCart(context),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Text(
            '${items.title}',
            style: TextStyle(
                color: Colors.black87, fontSize: 18, letterSpacing: -0.2),
          ),
        ),
        Text(
          '\$0.99',
          style: TextStyle(
            color: Colors.black38,
            fontSize: 16,
          ),
        ),
        Text(
          'x${items.quantity}',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Container(
                child: IconButton(
                  icon: const Icon(Icons.add),
                  color: Colors.greenAccent[700],
                  onPressed: () => addCart(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Container(
                child: IconButton(
                  icon: const Icon(Icons.remove),
                  color: Colors.redAccent[700],
                  onPressed: () => removeCart(context),
                ),
              ),
            ),
          ],
        ),
        Text(
          '\$${(items.quantity * items.price).toStringAsFixed(2)}',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
