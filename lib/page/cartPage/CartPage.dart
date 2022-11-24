import 'package:flutter/material.dart';
import 'package:projact_pas/page/cartPage/CartAppBar.dart';
import 'package:projact_pas/page/cartPage/CartItemSamples.dart';

import '../homePage/HomeBottomBar.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Color(0xffedecf2),
            ),
            child: Column(
              children: [
                CartItemSamples(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
