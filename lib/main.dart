import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/screens/home/home.dart';
import 'package:learn_flutter/states/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: CartModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Furniture App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            textTheme: GoogleFonts.poppinsTextTheme()
                .apply(displayColor: Colors.black38),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            appBarTheme: AppBarTheme(
                color: Colors.transparent,
                elevation: 0,
                brightness: Brightness.light)),
        home: Home(),
      ),
    );
  }
}
