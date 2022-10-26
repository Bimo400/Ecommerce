import 'package:flutter/material.dart';
import 'package:projact_pas/CartPage.dart';
import 'package:projact_pas/HomePage.dart';
import 'package:projact_pas/itemPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
Widget build(BuildContext){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
    ),
    routes: {
      "/" : (context) => HomePage(),
      "itemPage" :(context) => ItemPage(),
      "cartPage" :(context) => CartPage(),
    },
  );
}
}