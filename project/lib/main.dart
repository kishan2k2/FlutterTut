// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:project/Pages/login_page.dart';
import './utils/routes.dart';
import 'Pages/home_page.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import 'utils/routes.dart';

void main() {
  runApp(CodePur());
}

var name = "kishan";
var rn = 47;

class CodePur extends StatelessWidget {
  const CodePur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => HomePage(),
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
