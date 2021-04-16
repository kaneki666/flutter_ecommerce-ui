import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Color.fromRGBO(
              243,
              243,
              243,
              1,
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(
                Icons.search,
                size: 20,
                color: Color.fromRGBO(113, 113, 113, 1),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Search',
                  style: TextStyle(
                    color: Color.fromRGBO(113, 113, 113, 1),
                    fontSize: 18,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
