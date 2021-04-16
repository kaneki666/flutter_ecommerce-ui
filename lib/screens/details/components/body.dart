import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/home/components/image_data.dart';
import 'package:learn_flutter/states/cart.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  final ImageData imageData;
  const Body({required this.imageData});

  void incrementCartItem(BuildContext context) {
    var cart = context.read<CartModel>();
    cart.add(imageData);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: -20,
            right: -10 * 7,
            child: Hero(
              tag: imageData.id,
              child: Image.asset(
                imageData.imageUrl,
                height: 500,
                width: 400,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            bottom: 120,
            right: 15,
            child: Text(
              'Double  \nCheeseburger',
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: -0.5,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(19, 24, 28, 1),
                  height: 1.2),
            ),
          ),
          Positioned(
            bottom: 95,
            right: 182,
            child: Text(
              '\$ ${(imageData.price).toString()}',
              style: TextStyle(
                  fontSize: 18,
                  letterSpacing: -0.5,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(19, 24, 28, 1),
                  height: 1.2),
            ),
          ),
          Positioned(
            width: 310,
            bottom: 10,
            left: 30,
            child: Text(
              "Double Cheeseburger features two 100% pure beef burger patties seasoned with just a pinch of salt and pepper.",
              style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w200,
                  color: Color.fromRGBO(19, 24, 28, 0.8),
                  height: 1.2),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: FloatingActionButton(
              backgroundColor: Colors.black87,
              tooltip: 'Increment',
              onPressed: () => incrementCartItem(context),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 20,
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/burgers1.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(243, 243, 243, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    'assets/images/burgers2.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Image.asset(
                    'assets/images/burgers3.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Image.asset(
                    'assets/images/burgers4.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Image.asset(
                    'assets/images/burgers5.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
