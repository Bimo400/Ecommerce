import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Row(children: [
        Icon(Icons.sort,
        size: 30,
        color: Color(0xff475269),
        ),
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
                  color: Color(0xff475269),
                ),),
              ),
            ],
          ),
        ),
        Spacer(),
        Icon(
          Icons.notifications,
          size: 30,
          color: Color(0xff475269),
        ),
      ],
      ),
    );
  }
}