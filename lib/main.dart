import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fir App",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 10,
          backgroundColor: Colors.black,
          title: const Text(
            "My first app",
          ),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
