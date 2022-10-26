import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projact_pas/Detail/DetailSepatu.dart';
import 'package:projact_pas/DetailHeadset.dart';
import 'package:projact_pas/DetailMouse.dart';
import 'package:projact_pas/itemPage.dart';

class ItemWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return GridView.count(
      childAspectRatio: 0.72,
      physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child:  Column(children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Detailsepatu(),));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "images/Sepatu.png",
                  height: 120,
                  width: 120,
                ),
              ),
            ),
             Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Product Title",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            ),
             Container(
              alignment: Alignment.centerLeft,
              child: Text(
              "Write description of product",
              style: TextStyle(
                fontSize: 8,
                color: Colors.black54,
              ),
              ),
            ),
              Padding(padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                       Text(
                "\$55",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ), 
              Icon(CupertinoIcons.cart_badge_plus,
              color: Color(0xff475269),
              size: 28,
               ),
              ],
       
            ),
            ),
          ]),
        ),
        
        
          Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child:  Column(children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ItemPage(),));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "images/Jam.png",
                  height: 120,
                  width: 120,
                ),
              ),
            ),
              Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Product Title",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
              "Write description of product",
              style: TextStyle(
                fontSize: 8,
                color: Colors.black54,
              ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                       Text(
                "\$55",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ), 
              Icon(CupertinoIcons.cart_badge_plus,
              color: Color(0xff475269),
              size: 28,
               ),
              ],
       
            ),
            ),
          ]),
        ),
          Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child:  Column(children: [
            InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => DetailHeadset(),));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "images/Hadset.png",
                  height: 120,
                  width: 120,
                ),
              ),
            ),
              Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Product Title",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
              "Write description of product",
              style: TextStyle(
                fontSize: 8,
                color: Colors.black54,
              ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                       Text(
                "\$55",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ), 
              Icon(CupertinoIcons.cart_badge_plus,
              color: Color(0xff475269),
              size: 28,
               ),
              ],
       
            ),
            ),
          ]),
        ),
          Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child:  Column(children: [
            InkWell(
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailMouse(),));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "images/Mouse.png",
                  height: 120,
                  width: 120,
                ),
              ),
            ),
              Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Product Title",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
              "Write description of product",
              style: TextStyle(
                fontSize: 8,
                color: Colors.black54,
              ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                       Text(
                "\$55",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ), 
              Icon(CupertinoIcons.cart_badge_plus,
              color: Color(0xff475269),
              size: 28,
               ),
              ],
       
            ),
            ),
          ]),
        ),
          Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child:  Column(children: [
            InkWell(
              onTap: (){
                // Navigator.pushNamed(context, itemPage);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "images/Tas.png",
                  height: 120,
                  width: 120,
                ),
              ),
            ),
              Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Product Title",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
              "Write description of product",
              style: TextStyle(
                fontSize: 8,
                color: Colors.black54,
              ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                       Text(
                "\$55",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ), 
              Icon(CupertinoIcons.cart_badge_plus,
              color: Color(0xff475269),
              size: 28,
               ),
              ],
       
            ),
            ),
          ]),
        ),
          Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child:  Column(children: [
            InkWell(
              onTap: (){
                // Navigator.pushNamed(context, itemPage);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "images/Sepatu.png",
                  height: 120,
                  width: 120,
                ),
              ),
            ),
            Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Product Title",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
              "Write description of product",
              style: TextStyle(
                fontSize: 8,
                color: Colors.black54,
              ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                       Text(
                "\$55",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ), 
              Icon(CupertinoIcons.cart_badge_plus,
              color: Color(0xff475269),
              size: 28,
               ),
              ],
       
            ),
            ),
          ],
          ),
        ),
        ],
      );
  }
}