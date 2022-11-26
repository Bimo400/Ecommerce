import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:projact_pas/ApiModel/modelApi.dart';
import 'package:projact_pas/Detail/ItemAppBar.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key, required this.data}) : super(key: key);
  Data data;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool onthefav = false;
  var database;
  void initState() {
    super.initState();
    initDb();
  }

  Future initDb() async {
    database = openDatabase(
      join(await getDatabasesPath(), 'produks_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE produks(id INTEGER, imgproduct TEXT, productname TEXT, rate INTEGER, decription TEXT, shortDescription TEXT, harga INTEGER)',
        );
      },
      version: 1,
    );
    onthefav = await read(widget.data.productname);
    setState(() {});
  } //Read

  Future<bool> read(String? productname) async {
    final Database db = await database;
    final data = await db
        .query('produks', where: "productname = ?", whereArgs: [productname]);
    if (data.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> delete(Data? data) async {
    final db = await database;
    await db.delete(
      'produks',
      where: "productname = ?",
      whereArgs: [data!.productname],
    );
    setState(() {
      onthefav = false;
    });
  }

  Future<void> insertApi(Data data) async {
    final db = await database;
    await db.insert(
      'produks',
      data.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    setState(() {
      onthefav = true;
    });
  }

  Data? apiMovie;
  bool isloaded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedecf2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(8),
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
                        Container(
                          child: IconButton(
                              onPressed: () {
                                onthefav
                                    ? delete(widget.data)
                                    : insertApi(widget.data);
                              },
                              icon: onthefav
                                  ? Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 35,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                      size: 35,
                                    )),
                        ),
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
                        ),
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
                              child: Icon(
                                CupertinoIcons.minus,
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
                              child: Icon(
                                CupertinoIcons.plus,
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
      bottomNavigationBar: Container(
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
            Text("Rp. "+
              widget.data.harga.toString(),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color(0xffff7466),
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              icon: Icon(CupertinoIcons.cart_badge_plus),
              label: Text(
                "Add To Cart",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
