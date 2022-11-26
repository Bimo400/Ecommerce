import 'package:flutter/material.dart';

import '../homePage/HomeBottomBar.dart';
import '../homePage/HomePage.dart';

class checkout extends StatelessWidget {
  const checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffff7466),
          title: const Text('Checkout Success'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150, left: 90),
              child: Icon(
                Icons.shopping_cart,
                size: 100,
                color: Color(0xffff7466),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 90),
              child: Text(
                "You made a transaction",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              height: 50,
              width: 210,
              margin: EdgeInsets.only(top: 30, left: 80),
              child: ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xffff7466),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  'Order Other Products',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: HomeBottomBar(),
      ),
    );
  }
}
