import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10), 
          ),
          child: Row(
            children: [
            Radio(
                value: "",
               groupValue: "grupValue",
                onChanged: (index) {},
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset(
                    "images/Sepatu.png",
                  ),
                ),
                
            ],
          ),
        ),
            Container(
          height: 110,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10), 
          ),
          child: Row(
            children: [
            Radio(
                value: "",
               groupValue: "grupValue",
                onChanged: (index) {},
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset(
                    "images/Jam.png",
                  ),
                ),  
            ],
          ),
        ),
            Container(
          height: 110,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10), 
          ),
          child: Row(
            children: [
            Radio(
                value: "",
               groupValue: "grupValue",
                onChanged: (index) {},
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset(
                    "images/Tas.png",
                  ),
                ),
                
            ],
          ),
        ),
      ],
    );
  }
}