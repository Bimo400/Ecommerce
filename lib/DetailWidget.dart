import 'dart:ui';

import 'package:flutter/material.dart';
class DealsWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // crossAxisAligment: CrossAxisAligment.start,
        children: [
           Padding(
           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
           child: Image.asset("images/deal1.jpg",
            height: 200,
            width: 300,
            fit: BoxFit.cover,
            ),
           ) ,
            Padding(
           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
           child: Image.asset("images/deal2.jpg",
            height: 200,
            width: 300,
            fit: BoxFit.cover,
            ),
           ) ,
           Padding(
           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
           child: Image.asset("images/deal3.jpg",
            height: 200,
            width: 300,
            fit: BoxFit.cover,
            ),
           ) 
        ],
      ),
    );
  }
}