import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/cart/cart.dart';
import 'package:learn_flutter/screens/home/components/body.dart';
import 'package:learn_flutter/states/cart.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(context),
        body: Body());
  }
}

AppBar buildAppBar(BuildContext context) {
  int cartItem = Provider.of<CartModel>(context).getCartItem;
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(254, 254, 254, 1),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color.fromRGBO(225, 221, 221, 1)),
        ),
        child: IconButton(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.black87,
            size: 25,
          ),
          onPressed: () {},
        ),
      ),
    ),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: 80,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ),
                  );
                },
              ),
              cartItem > 0
                  ? Text(
                      "${cartItem.toString()}",
                      style: TextStyle(color: Colors.white),
                    )
                  : SizedBox(
                      width: 0,
                    ),
            ],
          ),
        ),
      ),
      SizedBox(
        width: 15,
      )
    ],
  );
}
