import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffff7466),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "Asy.Store",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.notifications,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
