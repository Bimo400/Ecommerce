import 'package:flutter/material.dart';
import 'package:projact_pas/DetailWidget.dart';
import 'package:projact_pas/HomeAppBar.dart';
import 'package:projact_pas/HomeBottomBar.dart';
import 'package:projact_pas/ItemsWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xffedecf2),
            ),
            child: Column(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                 padding: EdgeInsets.symmetric(horizontal: 15),
                 height: 50,
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                 ),

             child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left:5 ),
                  height: 50,
                  width: 250,
                  child: TextFormField(
                    decoration: 
                    InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here....",
                    ),
                  ),
                ),
               
                Container(
                  margin: EdgeInsets.only(left: 220, top: 10),
                  child: Icon(
                    Icons.search,
                    size: 27
                    
                    ,
                    color: Color(0xff475269),
                  ),
                )
              ],
              ),
               ),
               Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 15, left: 10),
                child: Text(
   "Best Deals",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffff7466),
                ),

                )
               ),
               DealsWidget(),
               SizedBox(height: 10),
               Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                 "News Products", 
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffff7466),
                  )
                ),
               ),
               ItemWidget(),
            ],
          ),
          ),
        ],
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}