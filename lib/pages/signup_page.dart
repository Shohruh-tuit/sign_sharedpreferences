import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pdp_s3_sharedpreferences_homework/pages/home_page.dart';

class SignUpPage extends StatefulWidget {
  static final String id = "signup_page";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          padding: EdgeInsets.only(left: 30, top: 20),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 40,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Let's Get Started!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Create an account to Q Allure to get all features",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                height: 60,
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                ),
                child: TextField(
                  // controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: InputBorder.none,
                    icon: Icon(
                      Feather.user,
                      color: Colors.grey,
                      size: 26,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                height: 60,
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                ),
                child: TextField(
                  // controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                    icon: Icon(
                      Feather.mail,
                      color: Colors.grey,
                      size: 26,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                height: 60,
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                ),
                child: TextField(
                  // controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Phone",
                    border: InputBorder.none,
                    icon: Icon(
                      Feather.smartphone,
                      color: Colors.grey,
                      size: 26,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                height: 60,
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                ),
                child: TextField(
                  // controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                    icon: Icon(
                      Feather.unlock,
                      color: Colors.grey,
                      size: 26,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                height: 60,
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey),
                  color: Colors.white,
                ),
                child: TextField(
                  // controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Confirm Passwor",
                    border: InputBorder.none,
                    icon: Icon(
                      Feather.unlock,
                      color: Colors.grey,
                      size: 26,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                // margin: EdgeInsets.only(left: 20, right: 20),
                height: 60,
                width: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.blueAccent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: FlatButton(
                  // onPressed: _doLogin,
                  child: Text(
                    "CREATE",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    child: Text(
                      "Login here",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
