import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/cart/components/body.dart';
import 'package:learn_flutter/states/cart.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List items = Provider.of<CartModel>(context).getCartItems;

    return Scaffold(
      appBar: buildAppBar(context),
      body: CartBody(items: items),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    int cartItem = Provider.of<CartModel>(context).getCartItem;
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(254, 254, 254, 1),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color.fromRGBO(225, 221, 221, 1)),
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black87,
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                "Your Cart",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  letterSpacing: -0.6,
                ),
              ),
              Text(
                "${cartItem.toString()} items",
                style: TextStyle(
                    color: Colors.greenAccent[700],
                    fontSize: 14,
                    letterSpacing: -0.2,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        SizedBox(
          width: width * 0.4,
        )
      ],
    );
  }
}
