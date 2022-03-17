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
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "Fir App",
      home: Scaffold(
        appBar: AppBar(title: const Text("Text")),
        body: const RandomWords(),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWords createState() => _RandomWords();
}

class _RandomWords extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  //final _biggerFont = const TextStyle(fontSize: 18);

  Widget _buildRow(WordPair pair, index) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              index.toString(),
              style: TextStyle(color: Colors.red[100]),
            ),
            const Text(" "),
            Text(
              pair.asPascalCase,
              style: TextStyle(fontSize: 18, color: Colors.blue[700]),
            )
          ],
        ),
        const Divider()
      ],
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      itemBuilder: (context, i) {
        final index = i;

        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index], index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return _buildSuggestions();
  }
}
