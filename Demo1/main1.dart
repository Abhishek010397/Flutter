import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp (
      title: 'Welcome to Flutter Environment',
      home: Scaffold (
        appBar: AppBar (
          title: Text('Abhishek'),
        ),
        body: Center(
          child: RandomWords()
        ),
      ),
    );
  }
}

class RandomWordState extends State<RandomWords> {

  @override
  Widget build(BuildContext conext) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

class RandomWords extends StatefulWidget {

  @override
  RandomWordState createState() => new RandomWordState();
}