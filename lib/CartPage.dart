import 'package:flutter/material.dart';
import 'package:projact_pas/CartAppBar.dart';
import 'package:projact_pas/CartItemSamples.dart';

class CartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(color: Color(0xffedecf2),
            ),
            child: Column(
              children: [
                CartItemSamples(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}