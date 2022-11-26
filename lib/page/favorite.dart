import 'package:flutter/material.dart';
import 'package:projact_pas/ApiModel/modelApi.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:projact_pas/Detail/DetailPage.dart';

import 'homePage/HomeBottomBar.dart';

class Favmviepge extends StatefulWidget {
  const Favmviepge({Key? key}) : super(key: key);

  @override
  State<Favmviepge> createState() => _FavmviepgeState();
}

class _FavmviepgeState extends State<Favmviepge> {
  var database;

  List<Data> shopifav = <Data>[];

//open database
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
    getShopifav().then((value) {
      setState(() {
        shopifav = value;
      });
    });
  }

//ambil data dari database
  Future<List<Data>> getShopifav() async {
    final Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query('produks');
    return List.generate(maps.length, (i) {
      return Data(
        id: maps[i]['id'] as int,
        productname: maps[i]['productname'] as String,
        imgproduct: maps[i]['imgproduct'],
        shortDescription: maps[i]['shortDescription'],
        decription: maps[i]['decription'] as String,
        harga: maps[i]['harga'] as int,
        rate: maps[i]['rate'] as int,
      );
    });
  }

//Delete data
  Future<void> deleteResult(int? id) async {
    final db = await database;
    await db.delete(
      'produks',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  @override
  void initState() {
    super.initState();
    initDb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff7466),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Favorite",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(
                          data: shopifav[index],
                        )),
              ).then((value) => initDb());
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: Container(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            // child: FadeInImage.assetNetwork(
                            //   placeholder: 'images/loading.gif',
                            //   image:shopifav[index].imgproduct.toString(),
                            //   height: 100,
                            child: Image.network(
                              shopifav[index].imgproduct.toString(),
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 150,
                                    child: Text(
                                      shopifav[index].productname.toString(),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    child: Text(
                                      shopifav[index]
                                          .shortDescription
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                ]),
                          ),
                          Container(
                            // margin: EdgeInsets.only(left: 90),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                    title: Text("Delete " +
                                        shopifav[index].productname.toString()),
                                    content: Text("Are you sure to delete " +
                                        shopifav[index].productname.toString() +
                                        " from favorite"),
                                    actions: <Widget>[
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("No")),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            deleteResult(shopifav[index].id!)
                                                .then((value) {
                                              getShopifav().then((value) {
                                                setState(() {
                                                  shopifav = value;
                                                });
                                              });
                                            });
                                          },
                                          child: Text("Yes")),
                                    ],
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.delete,
                                color: Color(0xffff7466),
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: shopifav.length,
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
