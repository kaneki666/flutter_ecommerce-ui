import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/cart/cart.dart';
import 'package:learn_flutter/screens/details/components/body.dart';
import 'package:learn_flutter/screens/home/components/image_data.dart';
import 'package:learn_flutter/states/cart.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  final ImageData imageData;
  const DetailsScreen({required this.imageData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(imageData: imageData),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
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
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: 80,
          height: 30,
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
