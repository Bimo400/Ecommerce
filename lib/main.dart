import 'package:flutter/material.dart';
import 'package:projact_pas/page/cartPage/CartPage.dart';
import 'package:projact_pas/page/homePage/HomePage.dart';
import 'package:projact_pas/user/signIn.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
// ignore: avoid_renaming_method_parameters
  Widget build(BuildContext contex) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
    ),
    routes: {
      "/" : (context) => SignInPage(),
      "cartPage" :(context) => CartPage(),
    },
  );
}
}