import 'package:flutter/material.dart';
import 'package:navy/pages/home_page.dart';
import 'package:navy/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
