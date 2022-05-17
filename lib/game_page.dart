import 'package:flutter/material.dart';
import 'alphabet_box.dart';

class GamePage extends StatelessWidget {
  GamePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HANGMAN'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: AlphabetCard(),
          ),
        ],
      ),
    );
  }
}
