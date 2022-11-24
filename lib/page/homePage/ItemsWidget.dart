import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projact_pas/ApiModel/modelApi.dart';
import 'package:projact_pas/Detail/DetailPage.dart';
import 'package:http/http.dart' as http;

class ItemWidget extends StatefulWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  Model? model;

  bool isloaded = true;
  
  void PostWork() async {
    setState(() {
      isloaded = false;
    });
    final res = await http.get(
      Uri.parse("http://10.0.2.2:8000/api/data"),
    );
    print("status code " + res.statusCode.toString());
    model = Model.fromJson(json.decode(res.body.toString()));
    setState(() {
      isloaded = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    PostWork();
  }

  @override
  Widget build(BuildContext context) {
    return isloaded == true
        ? Center(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.2),
              ),
              itemCount: model!.data!.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 3),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(
                                data: model!.data![index],
                              ),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.network(
                          model!.data![index].imgproduct.toString(),
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
                          model!.data![index].productname.toString(),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        model!.data![index].shortDescription.toString(),
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rp. " + model!.data![index].harga.toString(),
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                          ),
                          Icon(
                            CupertinoIcons.cart_badge_plus,
                            color: Color(0xff475269),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ]),
                );
              },
            ),
          )
        : CircularProgressIndicator();
  }
}
