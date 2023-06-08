import 'package:carassius_scaffold/carassius_scaffold.dart';
import 'package:carassius_scaffold/data/model/CarassiusStartingApp/MyRoutes.dart';
import 'package:carassius_scaffold/data/model/CarassiusStartingApp/MyThemeColor.dart';
import 'package:example/TestPage.dart';
import 'package:flutter/material.dart';

import 'Page1.dart';
import 'Page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CarassiusStartingApp(
        routes: MyRoutes()
            //.addRoutes("/", Page1())
            .addRoutes("/", TestPage())
            .addRoutes("/page_dua", Page2()),
        colorsLightTheme: MyThemeColor(isLightTheme: true),
        colorsDarkTheme: MyThemeColor(isLightTheme: false),
    );
  }
}