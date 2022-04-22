// ignore_for_file: prefer_const_constructors
// ignore_for_file: Avoid print calls in production code
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project/Pages/home_page.dart';
import 'package:project/Pages/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/Login.png",
                fit: BoxFit.cover,
                // height: 500,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                // style: GoogleFont
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter the Username",
                          labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "UserName cannot be null";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter the Password",
                          labelText: "Password"),
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "Password cannot be null";
                        } else if (value != null && value.length <= 6) {
                          return "Make a strong Password";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                child: InkWell(
                  splashColor: Colors.red,
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.amber,
                          )
                        : Text(
                            "login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                    //     decoration: BoxDecoration(
                    //         color: Colors.blue,
                    //         borderRadius: BorderRadius.circular(changeButton ? 50 : 8)),
                  ),
                ),
              )
              // ElevatedButton(
              //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
              //   onPressed: () {
              //     Navigator.pushNamed(context, Myroutes.homeRoute);
              //   },
              //   child: Text("Login"),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
