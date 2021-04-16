import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/home/components/searchbar.dart';
import 'package:learn_flutter/screens/home/components/grid.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SearchBar(),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
            child: SingleChildScrollView(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(15, 25, 27, 1),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Image.asset(
                            'assets/images/burger.png',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Food'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(243, 243, 243, 1),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Image.asset(
                            'assets/images/fries.png',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Snacks'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(243, 243, 243, 1),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Image.asset(
                            'assets/images/drinks.png',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Drinks'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(243, 243, 243, 1),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Image.asset(
                            'assets/images/dessert.png',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Dessert'),
                    )
                  ],
                ),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240, left: 20, right: 20),
            child: Grid(),
          )
        ],
      ),
    );
  }
}
