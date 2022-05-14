import 'package:flutter/material.dart';
import 'alphabet_box.dart';

class GamePage extends StatelessWidget {
  GamePage();

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HANGMAN'),
      ),
      body: Center(
        child: AlphabetCard(),
      ),
    );
  }
}
