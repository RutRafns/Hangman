import 'package:flutter/material.dart';

import 'game_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePage createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HANGMAN'),
      ),
      body: Center(
        child: TextButton(
          child: const Text(
            'Let\'s play!',
            textScaleFactor: 5.0,
            style: TextStyle(color: Colors.amberAccent),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Game()));
          },
        ),
      ),
    );
  }
}
