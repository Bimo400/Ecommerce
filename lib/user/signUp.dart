import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:projact_pas/page/homePage/HomePage.dart';
import 'package:projact_pas/user/signIn.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  late bool _eye;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late Dio _dio;

  @override
  void initState() {
    _eye = true;
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _dio = Dio();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.person_outline),
                hintText: "Username",
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "Email",
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              obscureText: _eye,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.lock_open),
                suffixIcon: InkWell(
                    onTap: () {
                      if (_eye == false)
                        _eye = true;
                      else
                        _eye = false;
                      setState(() {});
                    },
                    child: Icon((_eye == false)
                        ? Icons.remove_red_eye_sharp
                        : Icons.visibility_off)),
                hintText: "Password",
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have an account ?",
                    style: TextStyle(fontSize: 12),
                  ),
                  InkWell(
                    child: Text(
                      " Login",
                      style: TextStyle(
                          color: Colors.purple[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Color(0xffff7466),
              width: 180,
              height: 50,
              child: TextButton(
                onPressed: () async {
                  Response dataResponse;
                  dynamic _data = {
                    {
                      "email": _emailController.text,
                      "password": _passwordController.text
                    }
                  };
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  "Create An account",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
