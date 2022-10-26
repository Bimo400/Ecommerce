import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:projact_pas/ApiModel/modelApi.dart';
import 'package:projact_pas/ItemAppBar.dart';
import 'package:projact_pas/ItemBottomBar.dart';

class Detailsepatu extends StatefulWidget{
  Detailsepatu({Key? key, required this.data}) : super(key: key);
   Data data;
  @override
  State<Detailsepatu> createState() => _DetailsepatuState();
}

class _DetailsepatuState extends State<Detailsepatu> {
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xffedecf2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(padding: EdgeInsets.all(8),
          child: Image.network(
          widget.data.imgproduct.toString(),
          height: 290,
          ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.data.productname.toString(),
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff475269),
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       RatingBar.builder(
                        initialRating: widget.data.rate!.toDouble(),
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 25,
                        itemPadding: EdgeInsets.symmetric(horizontal: 2),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Color(0xffff7466),
                        ),
                        onRatingUpdate: (index) {},
                       ) ,
                       Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Icon(CupertinoIcons.minus,
                            size: 18,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "02",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff475269),
                              ),
                            ),
                          ),
                           Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Icon(CupertinoIcons.plus,
                            size: 18,
                            ),
                          ),
                        ],
                       ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      widget.data.decription.toString(),
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff475269),
                      ),
                      textAlign: TextAlign.justify,
                       ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar:Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 10,
          offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.data.harga.toString(),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton.icon(
            onPressed: (){},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xffff7466),
              ),
                 padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 13, horizontal: 15),),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                   RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            ),
            icon: Icon(CupertinoIcons.cart_badge_plus),
            label: Text("Add To Cart",style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold,
            ),),
          ),
        ],
      ),
    ),
    );
  }
}