import 'package:flutter/material.dart';
import 'package:moonlightstores/_commons/comon_colors.dart';
import 'package:moonlightstores/_views/order_listing_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'MOONLIGHTSTORE',
      theme: ThemeData(
            primaryColor: black
      ),
      home: Order_Listing_Screen(),
    );
  }
}
