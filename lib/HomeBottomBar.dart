import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projact_pas/favorite.dart';
import 'package:projact_pas/profile.dart';

class HomeBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xffff7466),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 32,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 32,
            ),
          ),
          InkWell(
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 32,
            ),
            onTap: () {
                //action code when clicked
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const favorite()),
                );
              }
          ),
          InkWell(
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 32,
              ),
              onTap: () {
                //action code when clicked
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              }),
        ],
      ),
    );
  }
}
