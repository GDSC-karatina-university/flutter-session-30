import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moonlightstores/_commons/comon_colors.dart';

class Product{
  final name;
  final price;
  final Color image;
  final quantity;
  Product({this.name, this.price, required this.image, this.quantity});
}

List<Product> products = [
  Product(name: "Viazi",price: 200,image: blue,quantity: "3kg"),
  Product(name: "Vitungu",price: 200,image: green,quantity: "3kg"),
  Product(name: "Nyanya",price: 200,image: red,quantity: "3kg"),
  Product(name: "Mayayi",price: 200,image: yellow,quantity: "3kg"),
  Product(name: "Viatu",price: 200,image: orange,quantity: "3kg"),
];