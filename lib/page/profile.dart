import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projact_pas/page/homePage/HomePage.dart';
import 'package:projact_pas/user/signIn.dart';

import 'homePage/HomeBottomBar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffff7466),
          title: const Text('Profile'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 20),
              child: Image.asset("images/profile.png"),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                "M.Nurwahid",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 70),
                  child: Text(
                    "Pengikut: 20",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    "||",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Mengikuti: 2",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 50),
                  child: Text(
                    "Keamanan & Akun",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 105),
                  child: Icon(
                    Icons.navigate_next,
                    size: 35,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15, left: 50),
                  child: Text(
                    "Alamat Saya",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, left: 150),
                  child: Icon(
                    Icons.navigate_next,
                    size: 35,
                  ),
                ),
              ],
            ),
            Row(children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 50),
                child: Text(
                  "Info Aplikasi",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 150),
                child: Icon(
                  Icons.navigate_next,
                  size: 35,
                ),
              ),
            ]),
            Container(
              height: 50,
              width: 110,
              margin: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xffff7466),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: Text(
                  'Logout',
                  style: TextStyle(fontSize: 20),
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
