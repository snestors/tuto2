import 'package:flutter/material.dart';
import 'package:tuto/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Seccion 6",
      home: HomePage(),
    );
  }
}
