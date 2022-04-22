// ignore_for_file: prefer_const_constructors
// ignore_for_file: Use key in widget constructor

import 'package:flutter/material.dart';
import 'package:project/Pages/login_page.dart';

class HomePage extends StatelessWidget {
  var name = "kishan";
  var rn = 47;
  // const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        // toolbarTextStyle: Colors.orange,
      ),
      body: Center(
        child: Text(
          "Hello Sahil, Kaise lagi animations3",
          style: TextStyle(
            fontSize: 50,
          ),
        ),

        // Text(" name: $name RollNo: $rn")
      ),
      drawer: Drawer(
        child: Text("Unit-01"),
        // "/": (context)=>LoginPage(),
      ),
    );
  }
}
